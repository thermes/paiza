#! /usr/bin/env ruby

inputs = ARGF.map(&:chomp)
puts ((inputs.count('yes') >= inputs.count('no')) ? 'yes' : 'no')
