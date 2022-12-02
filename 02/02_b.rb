move = {
  'X': 0, # lose
  'Y': 3, # draw
  'Z': 6  # win
}

plays = {
  'A X': 3, # played SCISSORS
  'A Y': 1, # played ROCK
  'A Z': 2, # played PAPER
  'B X': 1, # played ROCK
  'B Y': 2, # played PAPER
  'B Z': 3, # played SCISSORS
  'C X': 2, # played PAPER
  'C Y': 3, # played SCISSORS
  'C Z': 1, # played ROCK
}

lines = File.readlines("input.txt")

l = lines.reduce(0) do |acc, x|
  acc + plays[x.rstrip.to_sym] + move[x.rstrip[-1].to_sym]
end

puts l # 14859
