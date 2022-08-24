defmodule FizzBuzz do
  def build(file_name) do
    # case File.read(file_name) do
    #  {:ok, result} -> result
    #  {:error, reason} -> reason
    # end
    file_name
    |> File.read()
    |> handle_file_read()
  end

  defp handle_file_read({:ok, result}) do
    result =
      String.trim(result, "\n")
      # "1, 2, 3, 4" -> [1, 2, 3, 4]
      |> String.split(",")
      # |> Enum.map(fn number -> String.to_integer(number) end)
      |> Enum.map(&convert_and_evaluate_numbers/1)

    {:ok, result}
  end

  defp handle_file_read({:error, reason}), do: {:error, "Error reading the file: #{reason}"}

  defp convert_and_evaluate_numbers(elem) do
    elem
    |> String.to_integer()
    |> evaluate_number()
  end

  defp evaluate_number(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  defp evaluate_number(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate_number(number) when rem(number, 5) == 0, do: :buzz
  defp evaluate_number(number), do: number
end
