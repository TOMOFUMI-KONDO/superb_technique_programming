1.upto(100) { |n|
  s = n;

  if (n % 15) == 0;
    s = "FizzBuzz";
  elsif (n % 5) == 0;
    s = "Buzz";
  elsif (n % 3) == 0;
    s = "Fizz";
  end;

  puts(s)
}
