# PrimesTable

Prints out the multiplication table of the first n prime numbers.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'primes_table'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install primes_table

## Local Installation

Build the gem package locally with:

    $ bundle exec rake install

And install the gem locally:

    $ gem install --local pkg/primes_table-0.1.0.gem

## Usage

    $ primes_table 3
    >  2  3  5
       3  9 15
       5 15 25

    $ primes_table
    >       2   3   5   7  11  13  17  19  23  29
        2   4   6  10  14  22  26  34  38  46  58
        3   6   9  15  21  33  39  51  57  69  87
        5  10  15  25  35  55  65  85  95 115 145
        7  14  21  35  49  77  91 119 133 161 203
       11  22  33  55  77 121 143 187 209 253 319
       13  26  39  65  91 143 169 221 247 299 377
       17  34  51  85 119 187 221 289 323 391 493
       19  38  57  95 133 209 247 323 361 437 551
       23  46  69 115 161 253 299 391 437 529 667
       29  58  87 145 203 319 377 493 551 667 841

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/primes_table. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PrimesTable project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/primes_table/blob/master/CODE_OF_CONDUCT.md).
