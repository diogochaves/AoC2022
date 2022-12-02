move = {
  'X': 1, # ROCK       A
  'Y': 2, # PAPER      B
  'Z': 3  # SCISSORS    C
}

plays = {
  'A X': 3,
  'A Y': 6,
  'A Z': 0,
  'B X': 0,
  'B Y': 3,
  'B Z': 6,
  'C X': 6,
  'C Y': 0,
  'C Z': 3,
}

lines = File.readlines("input.txt")

l = lines.reduce(0) do |acc, x|
  acc + plays[x.rstrip.to_sym] + move[x.rstrip[-1].to_sym]
end

puts l # 10310
