# Weight value object

It should be immutable, and return a new weight object for each operation
(functional).

- Do it in Python
- TDD it
- Functional style (maybe)

# Examples of Syntax

## Instantiation
`Weight(5, 'lb')`

## Addition
`Weight(5, 'lb') + Weight(10, 'kg')`
Returns 5lb + 10kg formatted as the first argument (lb).

`Weight(17, 'lb') + 56`
If no weight measurement type is specified, it should fallback 
to the first measurement. Not sure if we'll do this or not.

To have it output as kg, use either (note kg is now first)
`Weight(10, 'kg') + Weight(5, 'lb')`
Or
`Weight(Weight(5, 'lb') + Weight(10, 'kg')).convert('kg')`

## Subtraction

The same as addition
`Weight(5, 'lb') + Weight(10, 'kg')`

## Rambles

Should it be
`Weight('5lb')`
Or
`Weight(5, 'lb')`

It should definitely be the latter, so we can sanely add to it.

## Conversion
`Weight(5, 'lb').convert('kg')`

## Misc Examples

Complex conversion:
`Weight(Weight(5, 'lb') + Weight(78, 'kg')).convert('mg')`

Getting type of weight:
`Weight(5, 'lb').measurement()`
`pounds(lb)`

Complex querying of weight type:
`Weight(Weight(5, 'lb') + Weight(78, 'kg')).convert('mg').measurement()`
`milligrams(mg)`

Raw value:
`Weight(5, 'lb')`.value()
`5`

If we use this, we need to think of a common weight they can all be.
Hmm...

Outputs a random fact about weight, since we're not all super-cereal:
`Weight.fact()`

# Weight Types

It should support these at a minimum:
- milligram (mg)
- gram (g)
- kilogram (kg)
- pound (lb)
- ounce (oz)
- stone (st)
- ton (t)

# Conversions

## lb -> g

lb / 0.0022046

## g -> lb

g * 0.0022046

## lb -> kg

lb / 2.2046

## kg -> lb

kg * 2.2046

## lb -> oz

lb / 16.000

## oz -> lb

oz * 0.062500


# Reference

- http://gwydir.demon.co.uk/jo/units/weight.htm
    - Listing of common weights

- http://www.weightconversions.org/abbreviations-tsta.htm?utm_expid=90519153-1130.KutZ87WMTSWfMRrduEEYFw.1&utm_referrer=https%3A%2F%2Fwww.google.co.uk%2F
    - Listing of weight abbreviations

- http://www.metric-conversions.org/weight/pounds-to-kilograms.htm
    - Weight conversion formulae
