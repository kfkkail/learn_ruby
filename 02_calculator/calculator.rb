
def add(a,b)
  return a + b
end

def subtract(a,b)
  return a - b
end

def sum(list)
  if list.inject(:+) == nil
    return 0
  else
    return list.inject(:+)
  end
end
