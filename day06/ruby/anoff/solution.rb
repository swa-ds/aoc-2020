#!/usr/bin/ruby

def readInput(path)
  input = File.read(path)
  return input
end

def parseGroups(input)
  input
    .split("\n\n")
    .map{ |group|
      group.split("\n").join("")
    }
end

def mergeGroupAnswers(groups)
  groups
    .map{ |group| group.split("").sort.join("") }
    .map{ |group| group.gsub(/(\w)\1+/, '\1') }
end

def part1 (input)
  mergeGroupAnswers(parseGroups(input))
    .map{ |g| g.size }
    .reduce(0, &:+)
end

def part2 (input)
end

if caller.length == 0
  input = readInput("./input.txt")

  puts "Solution for part1: %d" % part1(input)
  #puts "Solution for part2: %d" % part2(input)
end