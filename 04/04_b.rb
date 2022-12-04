lines = File.readlines("input.txt")

res = lines.select do |l|
  a1, a2, b1, b2 = l.chomp.split(',').map{_1.split('-').map(&:to_i)}.flatten
  b1 <= a2 && a1 <= b2
end.length

puts res # 881
