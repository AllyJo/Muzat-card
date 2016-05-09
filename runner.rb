# Bring in the faker gem for dir naming
require 'faker'

# Bring in pry-byebug as a breakpoint debugger
require 'pry-byebug'

# Display initial readout
puts "*" * 90
puts "You are currently in #{Dir.pwd}"

# Display subfolders and prompt
puts "The current subdirectories are #{Dir['*/']}"
puts "Type the name of the SubDirectory you would like to optimize."
print ":> "
dir_input = gets.chomp

# Display working sub dir & files
Dir.chdir("./#{dir_input}")
puts "You are currently in #{Dir.pwd}"
puts "*" * 90
puts "This directory contains #{Dir.entries(".").length} files."
puts "*" * 90

# Prompt user for n files variable
puts "How many files per SubDirectory would you like ohhh exalted leader"
print ":> "
dir_input = gets.chomp.to_i


# Prompt user for file type variable
puts "What type of file do you want to re-kagigger (extension only no dot)"
print ":> "
type_input = gets.chomp

###########################
# THE MEAT (algo fun times)
###########################

files = Dir.entries('.')

# check to see if that all files are of the type selected
files.delete_if { |file| !file.include?(".#{type_input}")}

files.each_with_index do |element, index|

  # we need to create a new dir for every dir_input(n) files

  if (index % dir_input == 0) || (index == 0)

    $dir_name = Faker::Hipster.word

    if Dir.entries('.').include? $dir_name
      $dir_name = $dir_name + rand(1000..9999).to_s
      Dir.mkdir($dir_name)
    else
      Dir.mkdir($dir_name)
    end

  end

  puts "Dir_Name: #{$dir_name}"
  binding.pry
  puts "Moving File #{index}: #{element}"
  puts "From: #{Dir.pwd}"
  puts "To: #{Dir.pwd}/#{$dir_name}"
  FileUtils.move(element, "./#{$dir_name}")
  # puts "Element: #{element} @ Index: #{index}"
end

