module Day1 (part1, part2) where

import Data.List


split :: [String] -> [[Integer]]
split [] = [[]]
split (a_head : a_tail) =
  if a_head == ""
  then []:splited_tail
  else ((read a_head :: Integer):head splited_tail):tail splited_tail
  where splited_tail = split a_tail

part1 :: IO ()
part1 = do
  file <- readFile "/Users/abhishekverma/IdeaProjects/AdventOfCode2022/out/production/AdventOfCode2022/Day1_input.txt"
  let calories = lines file
  let answer = maximum (map sum (split calories))
  print answer

part2 :: IO ()
part2 = do
  file <- readFile "/Users/abhishekverma/IdeaProjects/AdventOfCode2022/out/production/AdventOfCode2022/Day1_input.txt"
  let calories = lines file
  let totals = map sum (split calories)
  let answer = sum(take 3 (sortBy (flip compare) totals))
  print answer
