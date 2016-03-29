#! /usr/bin/env ruby

n = gets.chomp.to_i
q_ = []
n.times { q_ << gets.chomp.split(' ').map(&:to_i) }

m = gets.chomp.to_i
p_ = []
m.times { p_ << gets.chomp.split(' ').map(&:to_i) }

catch :q_loop_break do
  (n - m + 1).times do |q_y|
    (n - m + 1).times do |q_x|
      match = true

      catch :p_loop_break do
        m.times do |j|
          m.times do |i|
            if q_[q_y + j][q_x + i] != p_[j][i]
              match = false
              throw :p_loop_break
            end
          end
        end
      end

      if match
        puts "#{q_y} #{q_x}"
        throw :q_loop_break
      end
    end
  end
end
