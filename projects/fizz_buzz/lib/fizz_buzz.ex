defmodule FizzBuzz do
  
  def build(file_name) do 
    #case File.read(file_name) do
    #  {:ok, result} -> result
    #  {:error, reason} -> reason
    #end
    file_name
    |> File.read()
    |> handle_file_read()
     
  end

  def handle_file_read({:ok, result}) do
    String.trim(result, "\n")
    |> String.split(",") # "1, 2, 3, 4" -> [1, 2, 3, 4]
    # |> Enum.map(fn number -> String.to_integer(number) end)
    |> Enum.map(&String.to_integer/1)
  end

  def handle_file_read({:error, reason}), do: reason

end
