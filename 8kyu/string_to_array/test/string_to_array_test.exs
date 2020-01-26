defmodule TestSolution do
  use ExUnit.Case

  defp testing(s, exp) do
    actual = Kata.string_to_array s
    assert actual == exp, """
Given string: #{s}
Expected:     #{inspect exp,    charlists: :as_lists}
Got:          #{inspect actual, charlists: :as_lists}
"""
  end

  test "basic tests" do
    testing "Robin Singh", ["Robin", "Singh"]
    testing "I love arrays they are my favorite", ["I", "love", "arrays", "they", "are", "my", "favorite"]
  end
end
