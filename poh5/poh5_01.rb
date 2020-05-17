#! /usr/bin/env ruby

puts gets.chomp.chars.filter.with_index(1) { |ch, i| i.odd? }.join
