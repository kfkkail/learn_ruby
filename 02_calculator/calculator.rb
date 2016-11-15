
def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(list)
  if list.inject(:+) == nil
    0
  else
    list.inject(:+)
  end
end
