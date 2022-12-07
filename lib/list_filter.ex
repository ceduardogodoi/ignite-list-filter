require Integer

defmodule ListFilter do
  def call(list) do
    numbers = numbers_only(list)

    odds =
      Enum.filter(numbers, fn x ->
        number = String.to_integer(x)
        Integer.is_odd(number)
      end)

    Enum.count(odds)
  end

  defp numbers_only(list), do: Enum.filter(list, fn x -> Integer.parse(x) != :error end)
end
