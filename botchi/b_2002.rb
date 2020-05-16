#! /usr/bin/env ruby

gets
teams = []
ARGF.each.with_index do |results, no|
  teams[no] = {no: no+1, t: 0, w: 0, d: 0, l: 0}
  results.chomp.chars.each do |result|
    case result
    when 'W'
      teams[no][:w] += 1
      teams[no][:t] += 2
    when 'D'
      teams[no][:d] += 1
      teams[no][:t] += 1
    when 'L'
      teams[no][:l] += 1
    when '-'
      # nothing
    end
  end
end

winner = teams.max { |x, y| (x[:t] <=> y[:t]) }
puts "#{winner[:no]} #{winner[:t]} #{winner[:w]} #{winner[:d]} #{winner[:l]}"
