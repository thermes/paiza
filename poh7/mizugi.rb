#! /usr/bin/env ruby

n = gets.chomp!.to_i

divisor = 10**(9 + Math.log10(n).to_i + 1)

result = 1
(1..n).each do |i|
  result = result % divisor * i

  loop do
    break unless result % 10 == 0
    result /= 10
  end
end

puts result.to_s.gsub(/(.*?)0+$/, '\1').gsub(/.*?(\d{1,9})$/, '\1').gsub(/^0*(\d+)/, '\1')
