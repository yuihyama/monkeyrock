#!/usr/bin/env ruby

require 'benchmark'
require './lib/multiply'

Benchmark.bmbm do |x|
  x.report('2.multiply(3)') { 2.multiply(3) }
  x.report('Rational(2, 3).multiply(2)') { Rational(2, 3).multiply(2) }
  x.report('[1, 2, 3].multiply(2)') { [1, 2, 3].multiply(2) }
  x.report('(1..3).multiply(2)') { (1..3).multiply(2) }

  x.report('300_000.times { 2.multiply(3) }') do
    300_000.times { 2.multiply(3) }
  end
  x.report('300_000.times { Rational(2, 3).multiply(2) }') do
    300_000.times { Rational(2, 3).multiply(2) }
  end
  x.report('300_000.times { [1, 2, 3].multiply(2) }') do
    300_000.times { [1, 2, 3].multiply(2) }
  end
  x.report('300_000.times { (1..3).multiply(2) }') do
    300_000.times { (1..3).multiply(2) }
  end
end
