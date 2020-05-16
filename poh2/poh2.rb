#! /usr/bin/env ruby

(h, w) = gets.chomp.split(' ').map(&:to_i)

ds = []
h.times.each do
  ds << gets.chomp.chars.map(&:to_i)
end
ds_transpose = ds.transpose

gets
ARGF.each do |line|
  (s, t) = line.chomp.split(' ').map(&:to_i)

  count = 0
  (0..h-s).each do |y|
    next if ds[y].filter {|v| v == 0}.size < t
    (0..w-t).each do |x|
      next if ds[y][x] == 1
      next if ds_transpose[x].filter {|v| v == 0}.size < s

      flag = true
      s.times do |j|
        if ds[y+j][x..(x+t-1)].sum >= 1
          flag = false
          break
        end
      end

      count += 1 if flag
    end
  end

  puts count
end
