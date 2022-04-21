s = "puts \"s = \" + 34.chr + s.gsub(34.chr, 92.chr<<34) + 34.chr + \"; eval s\""; eval s
