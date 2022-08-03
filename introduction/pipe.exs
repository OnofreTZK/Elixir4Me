my_name = " TiAgO "

processed_name = my_name |> String.trim() |> String.downcase()

IO.puts(processed_name)

hex = "  3FF  " 

# The first argument is the that came from the pipe
int_hex = hex |> String.trim() |> String.to_integer(16)

IO.puts(int_hex)
