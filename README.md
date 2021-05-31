# Oystercard

[![Maintainability](https://api.codeclimate.com/v1/badges/bfc95e944d4598212797/maintainability)](https://codeclimate.com/github/jasonrowsell/boris-bikes/maintainability) [![Build Status](https://travis-ci.com/jasonrowsell/boris-bikes.svg?branch=main)](https://travis-ci.com/jasonrowsell/boris-bikes) [![Coverage Status](https://coveralls.io/repos/github/jasonrowsell/boris-bikes/badge.svg?branch=main)](https://coveralls.io/github/jasonrowsell/boris-bikes?branch=main)

This challenge required me to build a complex system which stretched my skills in Ruby, TDD and object-oriented design. This project was created to practice TDD using RSpec. My OOP/D focused on principles such as including encapsulation, high cohesion and low coupling, SRP and dependency injection. 

This project focuses on Pair Programming, TDD, and object-oriented design.

[Spec](#spec)
  - [Brief](#brief)
  - [User Stories](#user-stories)

## Spec

### Brief

Transport for London, the body responsible for tube transport, has a plan: they want to build a system for TFL's Oystercard payment network.

### User Stories

```
In order to use public transport
As a customer
I want money on my card
```

```
In order to keep using public transport
As a customer
I want to add money to my card
```

```
In order to protect my money
As a customer
I don't want to put too much money on my card
```

```
In order to pay for my journey
As a customer
I need my fare deducted from my card
```

```
In order to get through the barriers
As a customer
I need to touch in and out
```

```
In order to pay for my journey
As a customer
I need to have the minimum amount for a single journey
```

```
In order to pay for my journey
As a customer
I need to pay for my journey when it's complete
```

```
In order to pay for my journey
As a customer
I need to know where I've travelled from
```

```
In order to know where I have been
As a customer
I want to see to all my previous trips
```

```
In order to know how far I have travelled
As a customer
I want to know what zone a station is in
```

```
In order to be charged correctly
As a customer
I need a penalty charge deducted if I fail to touch in or out
```

```
In order to be charged the correct amount
As a customer
I need to have the correct fare calculated
```


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
