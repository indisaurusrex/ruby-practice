def factorial(n)
  product = n
  while n > 1
    n -= 1
    product *= n
  end
  product
end

# Intended output:
#
print factorial(5)
# => 120
