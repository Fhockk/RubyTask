class ProbabilityDensityFunction
  def self.solve(p1, a2, b3, x)
    a2 * p1 / x * ((x / b3) ** (a2 * p1) / ((( x / b3) ** a2 + 1) ** (p1 + 1)))
  end

  def self.mode(p1, a2, b3)
    b3 * ((a2 * p1 - 1) / (a2 + 1)) ** (1 / a2)
  end

  def self.maximum_value(p1, a2, b3)
    mode = mode(p1, a2, b3)
    ProbabilityDensityFunction.solve(p1, a2, b3, mode)
  end

  def self.mean(p1, a2, b3)
    b3 * (Math.gamma(1 - 1 / a2) * Math.gamma(p1 + 1 / a2)) / Math.gamma(p1)
  end

  def self.variance(p1, a2, b3)
    (b3 ** 2) * (((Math.gamma(1-2/a2)*Math.gamma(p1+2/a2))/Math.gamma(p1)) - ((Math.gamma(1-1/a2)*Math.gamma(p1+1/a2))/Math.gamma(p1))**2)
  end

  def self.deviation(p1, a2, b3, generation_count)
    variance = ProbabilityDensityFunction.variance(p1, a2, b3)
    Math.sqrt(variance / generation_count)
  end
end
