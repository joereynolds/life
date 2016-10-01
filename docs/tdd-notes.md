# TDD

- Jerry Wineberg started TDD in NASA, 1957
- TDD is writing tests to a specification
- Let TDD bring out the design of the program, don't code what you don't need
- Write the assertion first
- A test should only have one reason to fail, if there are multiple reasons,
  split them out into separate tests.

- Mocks
  - A mock is useful for checking **communication** between classes, not
    the implementation of methods in a class.
    A good test would be
      "This class should get this method and then call this class with these arguments"
    A bad test would be
      "Assert that this method returns 5."
    You shouldn't test behaviour on a mock
- A stub should return static data for an object to use
  No branches or logic at all. 
- Don't test stubs, test the object that USES the stubs

## Todo

Lookup these:
    - Perpetual Beta
    - parameterised tests
    - Interface segregation
    - Test First Design
    - Fluent assertions
    - The london school testing style
    - Growing object-oriented software, guided by test
    - Tell, don't ask


- Get a mock object framework (mockery?)
- TDD By example - Kent Beck
- Practice 30 mins a week, or weekends?

# Continuous Delivery

- Release quickly and often
- Helps minimise the feedback loop from customer

## Technical implications

- Software must always be fit for purpose
- Test assurance needs to be high

Lookup Symbian for an example of not doing this, their builds/tests took 24 hours to run. Anywayw time they wanted to release, they had to wait a day to see if it failed...

# Misc

Duplication is okay in one case
> It aids readability
