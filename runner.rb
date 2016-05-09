puts "You are currently in #{Dir.pwd}"
puts "The current subdirectories are #{Dir['*/']}"
puts "Type the name of the SubDirectory you would like to optimize."
dir_input = gets.chomp
Dir.chdir("./#{dir_input}")
p Dir.pwd
puts "This directory contains #{Dir.entries(".").length} files."

