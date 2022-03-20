def factorial(n)
  n += 1
  product = 1
  p "at the start the product is #{product}"
  while n > 1
    p "loop starts, n is #{n}"
    n -= 1
    p "we subtract 1 from n to get #{n}"
    p "we multiply the product (#{product}) by n (#{n})"
    product *= n
    p "we get the product #{product}"
  end
  p "we finally return #{product}"
  product
end

puts factorial(5)