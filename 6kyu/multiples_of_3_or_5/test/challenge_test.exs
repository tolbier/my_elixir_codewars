defmodule TestSolution do
  use ExUnit.Case
  import Challenge, only: [solution: 1]

  def test_solution(n, expected) do
    assert solution(n) == expected
  end

  test "basic tests" do
    test_solution 2, 0
    test_solution 3, 0
    test_solution 4, 3
    test_solution 5, 3
    test_solution 6, 8
    test_solution 7, 14
    test_solution 8, 14
    test_solution 9, 14
    test_solution 10, 23
  end
end