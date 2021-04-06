# Oystercard

[![Maintainability](https://api.codeclimate.com/v1/badges/bfc95e944d4598212797/maintainability)](https://codeclimate.com/github/jasonrowsell/boris-bikes/maintainability) [![Build Status](https://travis-ci.com/jasonrowsell/boris-bikes.svg?branch=main)](https://travis-ci.com/jasonrowsell/boris-bikes) [![Coverage Status](https://coveralls.io/repos/github/jasonrowsell/boris-bikes/badge.svg?branch=main)](https://coveralls.io/github/jasonrowsell/boris-bikes?branch=main)

Transport for London, the body responsible for delivery of a new bike system, has a plan: a network of docking stations and bikes that anyone can use. They want to build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make their dream a reality. The features built in this project are based on [user stories.](user_stories.md)

This project focuses on Pair Programming and TDD.

*Thank you pair programming partners!*
- [*Max*](https://github.com/MJCXII)
- [*Yohann*](https://github.com/YohannTisserand)
- [*Tiffany*](https://github.com/tiffanyvallo)
- [*Finn*](https://github.com/fwill22)
- [*Adam*](https://github.com/ajmccor)

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

The following commands clone and run the Boris Bikes program:

```sh
git clone git@github.com:jasonrowsell/boris-bikes.git
```

Run boris_bikes.rb script in a REPL environment from root directory

```shell
irb -r ./lib/boris_bikes.rb
```

### Running tests

```sh
rspec
```
