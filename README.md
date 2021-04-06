# Oystercard

[![Maintainability](https://api.codeclimate.com/v1/badges/bfc95e944d4598212797/maintainability)](https://codeclimate.com/github/jasonrowsell/boris-bikes/maintainability) [![Build Status](https://travis-ci.com/jasonrowsell/boris-bikes.svg?branch=main)](https://travis-ci.com/jasonrowsell/boris-bikes) [![Coverage Status](https://coveralls.io/repos/github/jasonrowsell/boris-bikes/badge.svg?branch=main)](https://coveralls.io/github/jasonrowsell/boris-bikes?branch=main)

This challenge required me to build a complex system which stretched my skills in Ruby, TDD and object-oriented design. Transport for London, the body responsible for tube transport, has a plan: they want to build a system for TFL's Oystercard payment network. [user stories.](user_stories.md)

This project focuses on Pair Programming, TDD, and object-oriented design.

*Thank you pair programming partners!*
- [*Ionut*](https://github.com/Mintar89)


## Technical skills

- Encapsulation
- Domain modelling
- Mocking with doubles and stubs
- TDD
- SRP
- OOP

## Installation and usage

This program requires latest [Ruby](https://www.ruby-lang.org/en/downloads/) version or more recent.

## Dependencies

- `rspec` - testing
- `coveralls` - test coverage
- `rake` - CI

### Getting started

The following commands clone and run the Oystercard program:

```sh
git clone git@github.com:jasonrowsell/oystercard.git
```

Run oystercard.rb script in a REPL environment from root directory

```shell
irb -r ./lib/oystercard.rb
```

### Running tests

```sh
rspec
```
