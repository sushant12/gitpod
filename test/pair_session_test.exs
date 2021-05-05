defmodule PairSessionTest do
  use ExUnit.Case

    # Given the user input is empty when calculating the sum then it should return zero.
  test "when user input is empty, return zero" do
    assert PairSession.sum() == 0
  end

  # Given the user input is one number when calculating the sum then it should return the same number. (example "3" should equal 3)
  test "when user input is one number, return same number" do
    assert PairSession.sum("3") == 3
  end

  # Given the user input is two numbers when calculating the sum then it should return the sum of those numbers. (example "1,2" should equal 3)
  test "when user input is two numbers, return them sum" do
    assert PairSession.sum("1,2") == 3
  end

  # Given the user input is an unknown amount of numbers when calculating the sum then it should return the sum of all the numbers. (example "1,2,3" should equal 6)
  test "when user input is an unknown amount of numbers, return them sum" do
    assert PairSession.sum("1,2,3") == 6
  end

  # Given the user input is multiple numbers with new line and comma delimiters when calculating the sum then it should return the sum of all the numbers. (example "1\n2,3" should equal 6)
  test "when user input is multiple numbers with new line and comma delimiters, return them sum" do
    assert PairSession.sum("1\n2,3") == 6
  end

  # Given the user input is multiple numbers with a custom single-character delimiter when calculating the sum then it should return the sum of all the numbers. (example “//;\n1;2” should return 3)
  test "when user input is multiple numbers with a custom single-character delimiter, return them sum" do
    assert PairSession.sum("//;\n1;2") == 3
  end
end
