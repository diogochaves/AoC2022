lines = File.readlines("input.txt")

total = lines.each_slice(3).reduce(0) do |a, s|
	badge = (s[0].chomp.chars & s[1].chomp.chars & s[2].chomp.chars).pop.ord
	a + badge - (badge >= 97 ? 96 : 38)
end

puts total # 2838
