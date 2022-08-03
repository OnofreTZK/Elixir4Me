my_list = [1, 2, 3, 4, 5, 6, 7]

[ head | tail ] = my_list

IO.puts("The head: ")
IO.puts(head)

IO.puts("The tail: ")
Enum.map(tail, fn(el) -> IO.puts(el) end)

my_tuple = {:ok, "message"}

{status, result} = my_tuple

if status == :ok do IO.puts(result) else IO.puts("Error") end

banana_function = fn
  {:ok, result} -> "The result is: #{result}"
  {:error, reason} -> "The error was: #{reason}"
  end
    
IO.puts(banana_function.({:ok, "Hamilton"}))
IO.puts(banana_function.({:error, "Verstappen"}))
