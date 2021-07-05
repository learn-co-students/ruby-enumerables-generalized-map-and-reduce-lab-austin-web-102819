# Your Code Here
def map(array)
  i=0 
  arrayy=[]
  while i<array.length do
  arrayy.push(yield(array[i]))
  i += 1
 end
return arrayy
end
def reduce(array, value=nil)
  if value
    total= value
    i=0 
  else 
    total= array[0]
    i=1 
  end
    while i<array.length do
  total = yield(total, array[i])
  i+= 1
end
  total
end