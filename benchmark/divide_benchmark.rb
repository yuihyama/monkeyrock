#!/usr/bin/env ruby

require 'benchmark'
require './lib/divide'

Benchmark.bmbm do |x|
  x.report('6.divide(2)') { 6.divide(2) }
  x.report('Rational(2, 3).divide(2)') { Rational(2, 3).divide(2) }
  x.report('[2, 4, 6].divide(2)') { [2, 4, 6].divide(2) }
  x.report('(1..3).divide(1)') { (1..3).divide(1) }

  x.report('300_000.times { 6.divide(2) }') do
    300_000.times { 6.divide(2) }
  end
  x.report('300_000.times { Rational(2, 3).divide(2) }') do
    300_000.times { Rational(2, 3).divide(2) }
  end
  x.report('300_000.times { [2, 4, 6].divide(2) }') do
    300_000.times { [2, 4, 6].divide(2) }
  end
  x.report('300_000.times { (1..3).divide(2) }') do
    300_000.times { (1..3).divide(1) }
  end
end
