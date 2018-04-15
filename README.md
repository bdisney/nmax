[![Build Status](https://travis-ci.org/bdisney/nmax.svg?branch=master)](https://travis-ci.org/bdisney/nmax)

# Nmax

Script for parsing text files or streaming input which returns detected maximum integer numbers.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nmax', :git => 'git@github.com:bdisney/nmax.git'
```

And then execute:

    $ bundle
    
Or just clone it and than run:

```ruby
cd nmax/
bundle exec rake install
```    

## Usage

cat some_text_sample.txt | nmax 100

nmax argument should be present, also it should be greater than zero.

Results:
```ruby
444555
222333
556
111
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. 

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

