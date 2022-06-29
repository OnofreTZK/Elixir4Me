x = [1, 2, 3, 4, 5, 6]

Enum.map(x, fn(el) -> IO.puts(el) end)
IO.puts("---")

# Adding an element to the beginning of the list
x = [99 | x]

Enum.map(x, fn(el) -> IO.puts(el) end)
IO.puts("---")

head = hd x
tail = tl x

IO.puts(head)
Enum.map(tail, fn(el) -> IO.puts(el) end)
IO.puts("---")

concat = [1, 2] ++ [3, 4]
subs = [1, 2, 3] -- [3, 4]

Enum.map(concat, fn(el) -> IO.puts(el) end)
IO.puts("---")
  
  Enum.map(subs, fn(el) -> IO.puts(el) end)
IO.puts("---")
