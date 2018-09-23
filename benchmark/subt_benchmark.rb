#!/usr/bin/env ruby

require 'benchmark'
require './lib/subt'

Benchmark.bmbm do |x|
  x.report('2.subt(1)') { 2.subt(1) }
  x.report('[1, 2, 3].subt(1)') { [1, 2, 3].subt(1) }

  x.report('300000.times { 2.subt(1) }') do
    300_000.times { 2.subt(1) }
  end
  x.report('300000.times { [1, 2, 3].subt(1) }') do
    300_000.times { [1, 2, 3].subt(1) }
  end
end
