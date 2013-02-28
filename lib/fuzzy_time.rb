class Time
  # Display the current time in a human-readable format.
  #
  # Examples
  #
  #   Time.now.fuzzy
  #   # => "half past three"
  #
  #   Time.local(2013, 1, 1, 5, 46).fuzzy
  #   # => "quarter to six"

  def fuzzy
    # convert from 24 to 12-hour clock
    hour = self.hour % 12
    min  = self.min

    hour = hour + 1 if min >= 33

    hour = case hour
           when 1; "one"
           when 2; "two"
           when 3; "three"
           when 4; "four"
           when 5; "five"
           when 6; "six"
           when 7; "seven"
           when 8; "eight"
           when 9; "nine"
           when 10; "ten"
           when 11; "eleven"
           when 12, 0; "twelve"
           end

    return "#{hour} o'clock" if min == 0

    prefix = case min
             when 1..2; "shortly after"
             when 3..7; "five past"
             when 8..12; "ten past"
             when 13..17; "quarter past"
             when 18..22; "twenty past"
             when 23..27; "twentyfive past"
             when 28..32; "half past"
             when 33..37; "twentyfive to"
             when 38..42; "twenty to"
             when 43..47; "quarter to"
             when 48..52; "ten to"
             when 53..57; "five to"
             when 58..59; "nearly"
             end

    "#{prefix} #{hour}"
  end
end
