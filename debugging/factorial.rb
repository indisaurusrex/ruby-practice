def factorial(n)
  product = n #changed to n, because factorial is times itself
  p "at the start product is #{product}"
  while n > 1 #changed to 1, so that final stage != 0
    n -= 1
    p "we multiply #{product} by #{n}"
    product *= n
    p "we get #{product}"
  end
  product
end

# Intended output:
#
print factorial(5)
# => 120
