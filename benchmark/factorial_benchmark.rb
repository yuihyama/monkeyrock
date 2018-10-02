#!/usr/bin/env ruby

require 'benchmark'
require './lib/factorial'

Benchmark.bmbm do |x|
  x.report('5.factorial') { 5.factorial }
  x.report('10.factorial') { 10.factorial }
  x.report('15.factorial') { 15.factorial }

  x.report('300_000.times { 5.factorial }') do
    300_000.times { 5.factorial }
  end
  x.report('300_000.times { 10.factorial }') do
    300_000.times { 10.factorial }
  end
  x.report('300_000.times { 15.factorial }') do
    300_000.times { 15.factorial }
  end
end
