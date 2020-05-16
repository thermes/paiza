#! /usr/bin/env ruby

(h, w, n) = gets.chomp.split(' ').map(&:to_i)
x = y = 0
flag_valid = true
ARGF.each do |d|
  case d.chomp
  when 'U'
    y += 1
  when 'D'
    y -= 1
  when 'L'
    x -= 1
  when 'R'
    x += 1
  end

  unless (0 <= x && x < w) && (0 <= y && y < h)
    flag_valid = false
  end
end

puts (flag_valid) ? 'valid' : 'invalid'
