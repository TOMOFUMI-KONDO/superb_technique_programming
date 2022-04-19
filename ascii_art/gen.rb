ascii_art_file = ARGV[0]
code_file = ARGV[1]

ascii_art = File.read(ascii_art_file)
count = ascii_art.count('#')

code = File.read(code_file).split.join

sub = count - (code.size + 13)
if sub.negative?
  puts 'Number of chars of code must be less than ones of ascii-art.'
  exit 1
end

code += '#' * sub
code = "eval(%w(#{code})*\"\")"

puts ascii_art.gsub('#') { code.slice!(0, 1) }
