#! /usr/bin/env ruby

(num, day) = gets.chomp.split(' ').map(&:to_i)

prices = []
num.times.each do
  price = gets.chomp.to_i
  prices << price
end

day.times.each do
  camp = gets.chomp.to_i
  targets = prices.filter { |price| price < camp }

  if targets.size <= 1
    puts 0
    next
  end

  sums = []
  flag = false
  targets[0..-2].each.with_index do |a, i|
    targets[(i+1)..-1].each do |b|
      sum = a + b
      if sum == camp
        puts sum
        flag = true
        break
      end
      sums << sum if sum < camp
    end
    break if flag
  end

  puts sums.filter { |price| price <= camp }.max unless flag
end
