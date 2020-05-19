# Write a program that:
# * Calculates the first 20 Fibonacci numbers.
#   * The first Fibonacci number is 0.
#   * The second Fibonacci number is 1.
#   * Every Fibonacci number after that is calculated by adding the
#     previous two Fibonacci numbers together e.g. the third Fibonacci
#     number is the result of `0 + 1`.
# * `puts`es these numbers, one per line.


number = 1
fib_1 = 0
fib_2 = 1

while number <= 20
  puts fib_1
  fib_1, fib_2 = fib_2, fib_1 + fib_2
  # changes fib_1 and fib_2 at the same time
  number += 1
end
