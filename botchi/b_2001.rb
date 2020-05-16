#! /usr/bin/env ruby

gets
output = gets.chomp
ARGF.each do |word|
  word.chomp!
  flag_concat = false
  (word.size - 1).downto(0).each do |i|
    cur = word[0..i]
    regexp = Regexp.new("(.*)#{cur}$")
    if regexp =~ output
      output = $1 + word
      flag_concat = true
      break
    end
  end
  unless flag_concat
    output += word
  end
end

puts output


# paiza
# apple
# letter


# ARGF.each do |word|
#   word.chomp!
#   p output
#   flag_concat = false
#   (word.size - 1).downto(0).each do |i|
#     cur = word[0..i]
#     p "output #{output}"
#     p "cur #{cur}"
#     if output.rindex(cur) == nil
#       p "fuga"
#       next
#     else
#       p "puge"
#       output = output[0..(output.rindex(cur)-1)] + word
#       flag_concat = true
#       break
#     end
#   end
#   unless flag_concat
#     p "hoge"
#     output += word
#   end
# end

