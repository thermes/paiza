#! /usr/bin/env ruby

n = gets
ARGF.each do |line|
  overtime = line.chomp.to_i
  puts (Time.new(Time.now.year, nil, nil, 1, 0, 0) - (overtime / 3 * 60)).strftime('%H:%M')
end
