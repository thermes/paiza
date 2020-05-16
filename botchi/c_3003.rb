#! /usr/bin/env ruby

def janken(a, b)
  if a == b
    return 0
  end
  if a == 'g'
    case b
    when 'c'
      return 1
    when 'p'
      return -1
    end
  elsif a == 'c'
    case b
    when 'p'
      return 1
    when 'g'
      return -1
    end
  elsif a == 'p'
    case b
    when 'g'
      return 1
    when 'c'
      return -1
    end
  end
end

gets
wa = wb = 0
ARGF.each do |line|
  (a, b) = line.chomp!.split(' ')
  w = janken(a, b)
  case w
  when 1
    wa += 1
  when -1
    wb += 1
  end
end

puts wa
puts wb
