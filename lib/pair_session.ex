defmodule PairSession do
    @spec sum() :: integer()
  def sum() do
    0
  end

  @spec sum(String.t()) :: integer()
  def sum(str) when is_binary(str) and byte_size(str) == 1 do
    String.to_integer(str)
  end

  def sum("//" <> str) do
    delimiter = str |> String.first()
    sanitizer(str, delimiter)
  end

  def sum(str) do
    sanitizer(str)
  end

  defp sanitizer(str, delimiter \\ ",") do
    str
    |> String.replace("\n", delimiter)
    |> String.split(delimiter, trim: true)
    |> sum_num
  end

  defp sum_num(list) do
    list
    |> Enum.map(&String.to_integer/1)
    |> Enum.sum()
  end
end
