#! /usr/bin/env ruby

gets
results = Array.new(7, 0)
ARGF.each.with_index do |line, i|
  results[i % 7] += line.chomp.to_i
end

results.each do |result|
  puts result
end
