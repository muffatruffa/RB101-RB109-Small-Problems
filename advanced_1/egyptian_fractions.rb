# Write two methods: one that takes a Rational number as an argument,
# and returns an Array of the denominators that are part of an Egyptian Fraction representation of the number,
# and another that takes an Array of numbers in the same format, and calculates the resulting Rational number
#
def egyptian(target_value)
  denominators = []
  unit_denominator = 1
  until target_value == 0
    unit_fraction = Rational(1, unit_denominator)
    if unit_fraction <= target_value
      target_value -= unit_fraction
      denominators << unit_denominator
    end

    unit_denominator += 1
  end

  denominators
end

def unegyptian(denominators)
  denominators.inject(Rational(0)) do |accum, denominator|
    accum + Rational(1, denominator)
  end
end
