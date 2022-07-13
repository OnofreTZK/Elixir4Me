x = %{a: 1, b: 2}

IO.puts(x[:a])
IO.puts(x[:b])

y = %{"a" => 1, "b" => 2}

IO.puts(y["a"])
IO.puts(y["b"])

prettyMap = %{age: 23, name: "Tiago"}

IO.puts(prettyMap.age)
IO.puts(prettyMap.name)

tiago = Map.put(prettyMap, :weight, 84.4)

IO.puts(tiago.weight)
