#! /usr/bin/env ruby

m = gets.chomp.to_i
n = gets.chomp.to_i

companies = []
ARGF.each do |line|
  companies << line.chomp.split(' ').map(&:to_i)
end

dp = [0]
companies.each do |company|
  (dp.size-1).downto(0).each do |i|
    unless dp[i].nil?
      price = company[1] + dp[i]
      if dp[company[0] + i].nil? || dp[company[0] + i] > price
        dp[company[0] + i] = price
      end
    end
  end
end

puts dp[m..-1].filter { |v| !v.nil? }.min
