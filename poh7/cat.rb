#! /usr/bin/env ruby

h = { 'c' => 0, 'a' => 0, 't' => 0 }
gets.chomp.each_char { |ch| h[ch] += 1 }

cat_count = h.min_by(&:last)[1]

h.each { |ch, count| h[ch] = count - cat_count }

puts cat_count
h.each do |_, count|
  puts h.max_by(&:last)[1] - count
end
