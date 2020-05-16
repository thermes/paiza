#! /usr/bin/env ruby

t = gets.chomp
if /^[a-zA-Z]+$/ =~ t || /^\d+$/ =~ t || t.size <= 5
  puts 'Invalid'
  exit
end

previous_ch = ''
n = 1
valid_flag = true
t.downcase.chars.each do |ch|
  if previous_ch == ch
    n += 1
    if n >= 3
      valid_flag = false
      break
    end
  else
    previous_ch = ch
    n = 1
  end
end

puts (valid_flag) ? 'Valid' : 'Invalid'
