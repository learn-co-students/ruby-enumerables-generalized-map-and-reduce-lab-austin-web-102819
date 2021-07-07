def map(array)
  new =[]
  counter=0
  while counter < array.length
new.push(yield(array[counter]))
counter += 1
end
new
end


def reduce(array,start_value=nil)
if start_value
  redu = start_value
  i = 0
else
  redu = array[0]
  i = 1
end

while i < array.length
redu = yield(redu , array[i])
i += 1
end
redu
end



