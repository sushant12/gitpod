defmodule PairSession do
  @spec count(String.t()) :: map()
  def count(sentence) do
    sentence
    |> String.downcase()
    |> String.split(~R/[^[:alnum:]\-]/u, trim: true)
    |> Enum.reduce(Map.new(), fn word, map -> Map.update(map, word, 1, &(&1 + 1)) end)
  end
end
