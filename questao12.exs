defmodule Quicksort do
  def sort([]), do: []

  def sort([pivot | rest]) do
    {less, greater} = Enum.split_with(rest, &(&1 <= pivot))
    sort(less) ++ [pivot] ++ sort(greater)
  end
end

# Exemplo de uso:
list = [4, 2, 8, 5, 1, 6, 3, 7]
sorted_list = Quicksort.sort(list)
IO.inspect(sorted_list) # Saída: [1, 2, 3, 4, 5, 6, 7, 8]
