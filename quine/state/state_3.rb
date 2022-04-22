eval s=%q(n=1; puts %(eval s=%q(#{ s.gsub(/n=(\d+)/, "n=#{ n+1 }") })))
