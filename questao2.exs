defmodule CountOccurrences do
  def count_element_occurrences(list, element) do
    count_element_occurrences(list, element, 0)
  end

  defp count_element_occurrences([], _element, count), do: count
  defp count_element_occurrences([head | tail], element, count) do
    new_count = if head == element, do: count + 1, else: count
    count_element_occurrences(tail, element, new_count)
  end
end

list = [1, 2, 3, 2, 4, 2, 5]
element_to_count = 2
count = CountOccurrences.count_element_occurrences(list, element_to_count)
IO.puts("O elemento #{element_to_count} ocorre #{count} vezes na lista.")
