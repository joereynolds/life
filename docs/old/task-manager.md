I have an idea for a task management program it could be cloud or software based.

The user enters a sentence/phrase which is then parsed by the program and it will give an estimated time for completion and will tell you (based on things) whether you should do it now or not.

##Sample Input

Here is an example of what could be inputted into the program

```
Write 500 word essay
```
Would be interpreted as
{verb}{length}{object} (something along these lines)

Here's another example

```
Cycle 5km to work
```
{verb}{length}{object}

In these cases, the user needs to enter there typing speed and cycling speed (these should be input on a separate screen and whenever the user wishes to enter them). They only have to enter this information once and then it is stored in a yaml file (fuck you sql).

The length of time an objective would take to complete is based upon the information they enter. I.e. if they type at 100 wpm and they need to write a 500 word essay, it would take 5 minutes. But actually we need to be more context-sensitive and take the {object} into account. i.e. writing an essay does **not** take 5 minutes!

Once a user has entered there activity. It should be stored with all of their other activities and made into either a tree based structure, or a pie chart or something.

####Should they do it now?

Based on the calulation, it will prioritize tasks to the conventions of most time management ideas i.e. If something can be done in 2 minutes or less, do it immediately.

##Output

The output should be a complete analysis of the activity

```
Cycle 5 km to work
```

Translates to

```
Length: 40 minutes (this would be calculated on the avg cycling speed)
```

# Language
I would like to implement this in Python using the Flask framework.
