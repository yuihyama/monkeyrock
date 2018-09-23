#!/usr/bin/env ruby

require 'benchmark'
require './lib/add'

Benchmark.bmbm do |x|
  x.report('1.add(2)') { 1.add(2) }
  x.report('[1, 2, 3].add(2)') { [1, 2, 3].add(2) }

  x.report('300000.times { 1.add(2) }') do
    300_000.times { 1.add(2) }
  end
  x.report('300000.times { [1, 2, 3].add(2) }') do
    300_000.times { [1, 2, 3].add(2) }
  end
end
