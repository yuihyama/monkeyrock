#!/usr/bin/env ruby

require 'benchmark'
require './lib/add'

Benchmark.bmbm do |x|
  x.report('1.add(2)') { 1.add(2) }
  x.report('Rational(2, 3).add(1)') { Rational(2, 3).add(1) }
  x.report('[1, 2, 3].add(2)') { [1, 2, 3].add(2) }
  x.report('(1..3).add(2)') { (1..3).add(2) }

  x.report('300000.times { 1.add(2) }') do
    300_000.times { 1.add(2) }
  end
  x.report('300000.times { Rational(2, 3).add(1) }') do
    300_000.times { Rational(2, 3).add(1) }
  end
  x.report('300000.times { [1, 2, 3].add(2) }') do
    300_000.times { [1, 2, 3].add(2) }
  end
  x.report('300000.times { (1..3).add(2) }') do
    300_000.times { (1..3).add(2) }
  end
end
