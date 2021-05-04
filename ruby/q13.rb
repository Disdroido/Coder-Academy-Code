arr = [5, 22, 29, 39, 19, 51, 78, 96, 84]
i = 25
while (i < arr.size - 1 && arr[i] < arr[i + 1])
    i = i + 1
end

arr[i] = arr[i + 1]
arr[i + 1] = arr[i]
puts i