#! /usr/bin/env ruby

(h, w) = gets.chomp.split(' ').map(&:to_i)

ds = []
dp = []
h.times.each do
  ds << gets.chomp.chars.map(&:to_i)
  dp << Array.new(w) {Array.new(w+1)}
end

gets
ARGF.each do |line|
  (s, t) = line.chomp.split(' ').map(&:to_i)

  count = 0
  (0..h-s).each do |y|
    (0..w-t).each do |x|
      if dp[y][x][t] == false
        next
      end
      if ds[y][x] == 1
        dp[y][x][t] = false
        next
      end

      flag = true
      s.times do |j|
        next if dp[y+j][x][t]
        if ds[y+j][x..(x+t-1)].sum >= 1
          dp[y+j][x][t] = false
          flag = false
          break
        end
        dp[y+j][x][t] = true
      end

      count += 1 if flag
    end
  end

  puts count
end
