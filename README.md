# fuzzy_time

Extends Ruby's Time class with a new `fuzzy` method that returns the current time in a human-readable format.

Inspired by the [FuzzyClock](http://www.objectpark.org/FuzzyClock.html) OS X app from Objectpark.

## Examples

  ```
  Time.now.fuzzy
  # => "half past three"
  ```
  
  ```
  Time.local(2013, 1, 1, 5, 46).fuzzy
  # => "quarter to six"
  ```
