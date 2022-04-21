eval$s=%w(
  s=%(eval$s=%w(#{$s})*"");

  f = -> n { s.slice!(0, n)};

  10.times {
    puts(32.chr * 3 + f[10] + 32.chr * 4);
    puts(32.chr + f[2] + 32.chr * 10 + f[2] + 32.chr * 2);
    puts(f[2] + 32.chr * 3 + f[1] + 32.chr * 4 + f[1] + 32.chr * 3 + f[2] + 32.chr);
    puts(f[2] + 32.chr * 12 + f[2] + 32.chr);
    puts(f[2] + 32.chr * 12 + f[2] + 32.chr);
    puts(f[2] + 32.chr * 2 + f[2] + 32.chr * 4 + f[2] + 32.chr * 2 + f[2] + 32.chr);
    puts(f[2] + 32.chr * 3 + f[6] + 32.chr * 3 + f[2] + 32.chr );
    puts(32.chr + f[2] + 32.chr * 10 + f[2] + 32.chr * 2);
    puts(32.chr * 3 + f[10] + 32.chr * 4);
    puts
  }
  
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
)*""
