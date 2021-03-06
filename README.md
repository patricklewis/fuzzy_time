# fuzzy_time

Extends Ruby's Time class with a new `fuzzy` method that returns the time in a human-readable format.

Inspired by the [FuzzyClock](http://www.objectpark.org/FuzzyClock.html) OS X app from Objectpark.

## Installation
```
gem install fuzzy_time
```

## Usage

```ruby
require 'fuzzy_time'

Time.now.fuzzy
# => "half past three"

Time.local(2013, 1, 1, 5, 46).fuzzy
# => "quarter to six"

Time.local(2013, 1, 1, 9, 0).fuzzy
# => "nine o'clock"
```
