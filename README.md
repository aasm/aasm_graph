# AASM::Graph

Add-on gem for creating graphs from AASM state machine definitions

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'aasm_graph'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install aasm_graph

## Usage

You can use it via the command line interface:
```
./bin/aasm_graph -Iexample -rjob Job
```
Or you can use it with Rake. In your `Rakefile`, load the `aasm_graph` task file:
```
load "aasm/tasks/aasm_graph.rake"
```
And then you can run the rake task:
```
rake aasm_graph INCLUDE=./example REQUIRE=job CLASS=Job
```

## Contributing

1. Fork it ( https://github.com/aasm/aasm_graph/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
