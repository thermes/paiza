#! /usr/bin/env ruby

n = gets.chomp.to_i
q_ = []
n.times { q_ << gets.chomp.split(' ').map(&:to_i) }

m = gets.chomp.to_i
p_ = []
m.times { p_ << gets.chomp.split(' ').map(&:to_i) }

catch :loop_break do
  (n - m + 1).times do |q_y|
    (n - m + 1).times do |q_x|
      match = true

      m.times do |j|
        if q_[q_y + j][q_x, m] != p_[j]
          match = false
          break
        end
      end

      if match
        puts "#{q_y} #{q_x}"
        throw :loop_break
      end
    end
  end
end
