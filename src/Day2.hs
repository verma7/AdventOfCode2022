module Day2 (part1, part2) where

import Data.Map

part1 :: IO ()
part1 = do
  file <- readFile "/Users/abhishekverma/IdeaProjects/AdventOfCode2022/out/production/AdventOfCode2022/Day2_input.txt"
  let moves = lines file
  print moves
  let scoreMap = fromList[("A X", 4), ("B X", 1), ("C X", 7), ("A Y", 8), ("B Y", 5), ("C Y", 2), ("A Z", 3), ("B Z", 9), ("C Z", 6)]
  let scores = Prelude.map (\x -> findWithDefault 100000 x scoreMap) moves
  print scores
  let val=sum(scores)
  print val

part2 :: IO ()
part2 = do
  file <- readFile "/Users/abhishekverma/IdeaProjects/AdventOfCode2022/out/production/AdventOfCode2022/Day2_input.txt"
  let moves = lines file
  print moves
  let scoreMap = fromList[("A X", 3), ("B X", 1), ("C X", 2), ("A Y", 4), ("B Y", 5), ("C Y", 6), ("A Z", 8), ("B Z", 9), ("C Z", 7)]
  let scores = Prelude.map (\x -> findWithDefault 100000 x scoreMap) moves
  print scores
  let val=sum(scores)
  print val
