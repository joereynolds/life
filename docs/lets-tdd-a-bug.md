I've recently started writing a CLI in Typescript to detect dead css,
it's called [Mort](https://github.com/joereynolds/mort).
There was a bug that has existed since it's early days as a [shell script](https://github.com/joereynolds/configs/blob/master/dotfiles/bash/.bashrc#L30).

I found out the cause of the bug by chance, thanks to vim echoing a helpful `[dos]` when I saved the troublesome file.
The bug was that on css files with Windows-style line-endings, the output would be garbled and malformed.

On Unix systems it looks like this:
```
: mort assets/css/main.css
0 usages found, menu active, can probably be removed.
0 usages found, text ul, can probably be removed.
0 usages found, text ol can probably be removed.
0 usages found, article + article can probably be removed.
```

But on Windows, it looked like this:
```
: mort assets/css/main.css
 can probably be removed.ve,
 can probably be removed.
 can probably be removed.
 can probably be removed.
 can probably be removed. article
 can probably be removed.ag
```

Let's fix the bug the "TDD way".

- Write a test to confirm the bug has been fixed.
- Fix the bug.

# Write your assertions first

Before you write any actual code, write a test case to confirm the bug is fixed.

```
// Bug fix:
// https://github.com/joereynolds/mort/issues/6
test("It can handle unix and windows line endings", () => {
    const expected = [
        ".menu .active",
        ".hljs{",
        ".text ul,",
        ".text ol {",
        ".song {",
        ".article + .article",
        ".article-tag",
    ];
    const selectors = new Selectors();
    expect(selectors.fromFile("test/bug-fixes/windows-line-endings.css")).toEqual(expected);
});
```

Once we have the test case set up, we can then go about starting to write the code to fix the bug.
In my case, it was fairly simple, split on `\n` for unix, and `\r\n` for windows.

**Before**
const selectors = fileContents.split("\n").filter(selector => {

**After**
const selectors = fileContents.split(/(\r\n|\n)/g).filter(selector => {

Once you've written the code to fix the bug, run the tests (`npm test`)and they should pass.

```
PASS  test/main.test.ts
PASS  dist/test/main.test.js

Test Suites: 1 passed, 1 total
Tests:       8 passed, 8 total
Snapshots:   0 total
Time:        1.769s, estimated 2s
Ran all test suites matching /test/i.
```
