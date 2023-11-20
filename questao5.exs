defmodule StringUtils do
  def count_substring_occurrences(string, substring), do: count_substring_occurrences(string, substring, 0)

  defp count_substring_occurrences("", _substring, count), do: count

  defp count_substringoccurrences(string, substring, count) do
    case String.split(string, substring) do
      [ | rest] ->
        count_substringoccurrences(Enum.join(rest, substring), substring, count + 1)
       ->
        count_substring_occurrences("", substring, count)
    end
  end
end

IO.puts(StringUtils.count_substring_occurrences("cababab", "ab"))
