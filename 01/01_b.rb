lines = File.readlines("input.txt")
max = []

lines.reduce(0) do |cur, n|
  if n == "\n"
    max << cur
    cur = 0
  end
  cur + n.to_i
end

puts max.sort.reverse[0..2].sum # 206289
