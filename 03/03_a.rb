lines = File.readlines("input.txt")

 total = lines.reduce(0) do |acc, r|
	first, second = [r[0, r.size/2], r[r.size/2..-1]]
	same = (first.chars & second.chars).pop.ord
	acc + same - (same >= 97 ? 96 : 38)
end

puts total # 7908
