#! /usr/bin/env ruby

m = gets.chomp.to_i
n = gets.chomp.to_i

companies = []
ARGF.each do |line|
  companies << line.chomp.split(' ').map(&:to_i)
end

dp = {0 => 0}
companies.each do |company|
  dp.sort.reverse.each do |k, v|
    price = company[1] + v
    if dp[company[0] + k].nil? || dp[company[0] + k] > price
      dp[company[0] + k] = price
    end
  end
end

puts dp.filter { |k, v| k >= m }.values.min
