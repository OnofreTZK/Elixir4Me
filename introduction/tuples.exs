tupl = {1, 2, 3 ,4}

element2 = elem(tupl, 1)

IO.puts(element2)

result = File.read("test.txt") # Monad design pattern

IO.puts(elem(result, 0))

if elem(result, 0) == :ok do IO.puts(elem(result, 1)) else IO.puts("Impure world won") end


