def clear
  print "\x1b[2]"
end

def init
  print "\x1b[1;1H"
end

clear

w = 10
h = 5
p = [0, 0]

loop do
  init

  row = "." * w
  if p[0] == 0
    row[p[1]] = "#"
  end
  puts row

  (h-2).times do |i|
    row = "." + " " * (w-2) + "."
    if p[0] == i + 1
      row[p[1]] = "#"
    end
    puts row
  end

  row = "." * w
  if p[0] == h-1
    row[p[1]] = "#"
  end
  puts row

  if p[1] == 0
    if p[0] < h-1
      p[0] += 1
    else
      p[1] += 1
    end
  elsif p[0] == h-1
    if p[1] < w-1
      p[1] += 1
    else
      p[0] -= 1
    end
  elsif p[1] == w-1
    if p[0] > 0
      p[0] -= 1
    else
      p[1] -= 1
    end
  elsif p[1] > 0
    p[1] -= 1
  end

  sleep 0.05
end

