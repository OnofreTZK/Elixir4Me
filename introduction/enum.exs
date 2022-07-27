mylist = [1, 5, 70, 345, 21, 2]

myListSorted = Enum.sort(mylist)

Enum.map(myListSorted, fn(el) -> IO.puts(el) end)

newMap = Enum.reduce(%{a: 1, b: 2}, %{}, fn {key, value}, acc -> Map.put(acc, key, value + 1) end)

IO.puts(newMap.b)

# Check Enum module cause there are a lot of functions
