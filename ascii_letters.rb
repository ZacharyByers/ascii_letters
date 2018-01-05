require 'pry'
require 'colorize'

def ascii_hasher(input)
  ascii_array = input.map { |char| { char => char.ord } }
end

def sort?
  while true
    puts "Sort? (y/n)".yellow

    choice = gets.strip.downcase

    case choice
      when 'y'
        return true
      when 'n'
        return false
      else
        puts "Invalid input".red
    end
  end
end

def sorter(arr)
  while true
    puts """
1. Ascending
2. Descending
    """.yellow

    input = gets.to_i

    case input
      when 1
        return arr.sort_by { |hash| hash.values }
      when 2
        return arr.sort_by { |hash| hash.values }.reverse
      else
        puts "Invalid input.".red
    end
  end
end

while true
  puts "Input some letters, separated by spaces.".yellow
  input = gets.strip.split(' ')

  output = ascii_hasher(input)

  puts output

  if sort?
    puts sorter(output)
  end

  puts "Continue? (y/n)".yellow

  choice = gets.strip.downcase

  case choice
    when 'y'
    when 'n'
      puts "Buh-bye now".light_blue
      exit 0
    else
      puts "Invalid input, so we're continuing anyway!".green
  end

end
