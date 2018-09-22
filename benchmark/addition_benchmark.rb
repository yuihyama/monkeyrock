#!/usr/bin/env ruby

require 'benchmark'
require './lib/addition'

Benchmark.bmbm do |x|
  x.report('1.addition(2)') { 1.addition(2) }
  x.report('[1, 2, 3].addition(2)') { [1, 2, 3].addition(2) }

  x.report('300000.times { 1.addition(2) }') {
    300000.times { 1.addition(2) }
  }
  x.report('300000.times { [1, 2, 3].addition(2) }') {
    300000.times { [1, 2, 3].addition(2) }
  }
end
