#write your code here
def add x, y
  return x + y
end

def subtract x, y
  return x - y
end

def sum a
  return a.reduce(0) {|a, b| a+=b}
end

def multiply a
  return a.reduce(1) {|a, b| a*=b}
end

def power x, y
  return x**y
end

def factorial x
  return 1 if x < 2
  return x*factorial(x-1)
end
