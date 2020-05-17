#! /usr/bin/env ruby

m = gets.chomp.to_i
n = gets.chomp.to_i

companies = []
ARGF.each do |line|
  companies << line.chomp.split(' ').map(&:to_i)
end

results = []
1.upto(companies.size) do |sub_num|
  results << companies.combination(sub_num).to_a.map { |a| a.transpose }.map { |a| [a[0].sum, a[1].sum] }.filter { |a| a[0] >= m }.map { |a| a[1] }
end
puts results.flatten.min


