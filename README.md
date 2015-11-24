# OVOV::Calculator
[![Build Status](https://travis-ci.org/honzahovorka/ovov-calculator.svg?branch=master)](https://travis-ci.org/honzahovorka/ovov-calculator) [![Code Climate](https://codeclimate.com/github/honzahovorka/ovov-calculator/badges/gpa.svg)](https://codeclimate.com/github/honzahovorka/ovov-calculator) [![Coverage Status](https://coveralls.io/repos/honzahovorka/ovov-calculator/badge.svg?branch=master&service=github)](https://coveralls.io/github/honzahovorka/ovov-calculator?branch=master)

Provide calculators for [OVOV](http://www.ovov.cz) disciplines extracted from original Excel

## Installation

Add this line to your application's Gemfile:

    gem 'ovov-calculator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ovov-calculator

## Usage

``` ruby
require 'calculator'

# pass performance to initialize
calc = OVOV::Calculator::BallThrow.new(200)
puts calc.calculate # => 2610.0

# pass performance using attr_accessor
calc = OVOV::Calculator::Swimming.new
calc.performance = 100
puts calc.calculate # => 510.0

# pass performance to run calculator
calc = OVOV::Calculator::Run.new
calc.performance = '3:00'
puts calc.calculate # => 1050.0
```

All calculators

``` ruby
OVOV::Calculator::BallThrow
OVOV::Calculator::Dribbling
OVOV::Calculator::JumpRope
OVOV::Calculator::LongJump
OVOV::Calculator::MedicineBall
OVOV::Calculator::PullUp
OVOV::Calculator::PushUp
OVOV::Calculator::Run
OVOV::Calculator::SitUp
OVOV::Calculator::Sprint
OVOV::Calculator::Swimming
OVOV::Calculator::TripleJump
```

## Contributing

1. Fork it ( https://github.com/honzahovorka/ovov-calculator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
