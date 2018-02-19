# A feature library for PHP

## Possible API


### Basic check
```
if ($feature->isEnabled('my-feature-name')) {
    echo 'my feature is enabled!';
}
```

### Enable the feature on a specific date

```
if ($feature->exists('my-feature-name')->enableOn('2018-04-01')) {
    echo 'April fools!';
}

```

Or on an array of dates

```
if ($feature->exists('my-feature-name')->enableOn(['2018-04-01', '2018-12-25 12:34:01', '2018-06-09'])) {
    echo 'Enabled on April Fools, Christmas, and my birthday';
}

```

### Enable between two dates

```
if ($feature->exists('my-feature-name')->enableBetween('2018-12-01', '2018-12-31')) {
    echo 'Tis the season to be jolly';
}
```

## Misc

- Fork leibniz?
