ascii_art_file = ARGV[0]
code_file = ARGV[1]

ascii_art = File.read(ascii_art_file)
count = ascii_art.count('#')

code = File.read(code_file).split.join
code += '#' * [0, count - (code.size + 13)].max

wrapped_code = "eval(%w(#{code})*\"\")"

puts ascii_art.gsub('#') { wrapped_code.slice!(0, 1) }
