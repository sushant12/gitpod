defmodule PairSessionTest do
  use ExUnit.Case

  # test "count one word" do
  #   assert PairSession.count("word") == %{"word" => 1}
  # end

  # test "should return empty map for empty string" do
  #   assert PairSession.count("") == %{}
  # end

  test "count multiple occurence" do
    assert PairSession.count("elixir elixir ruby go") == %{"elixir" => 2, "go" => 1, "ruby" => 1}
  end

  test "should raise an error if parameter is not binary" do
    assert_raise FunctionClauseError, fn ->
      PairSession.count('elixir elixir')
    end
  end
end
