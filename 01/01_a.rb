lines = File.readlines("input.txt")
max = 0

lines.reduce(0) do |cur, n|
  if n == "\n"
    max = [max, cur].max
    cur = 0
  end
  cur += n.to_i
end

puts max # 71023
