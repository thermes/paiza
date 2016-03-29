#! /usr/bin/env ruby

dummy = gets
dummy = gets
xs = gets.chomp.split(' ').map(&:to_i)
dummy = gets
ys = gets.chomp.split(' ').map(&:to_i)

puts ((ys - xs).length == 0 ? 'None' : (ys - xs).sort.join(' '))
