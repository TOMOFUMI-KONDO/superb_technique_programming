def clear
  print "\x1b[2]"
end

def init
  print "\x1b[1;1H"
end

clear

loop do
  # frame 1
  init
  puts "   ()   "
  puts "  -[]-  "
  puts "   /\\   "
  sleep 0.2

  # frame 2
  init
  puts "     ()   "
  puts "    -[]-  "
  puts "    // "
  sleep 0.2

  # frame 3
  init
  puts "   ()   "
  puts "  -[]-  "
  puts "   /\\   "
  sleep 0.2

  # frame 4
  init
  puts " ()     "
  puts "-[]-    "
  puts "  \\\\    "
  sleep 0.2
end

