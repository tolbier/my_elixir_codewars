defmodule TestSolution do
  use ExUnit.Case

  defp testing(arr, exp) do
    actual = AddLetters.add_letters(arr)
    msg = """
    letters: #{inspect(arr)}
    expected: #{inspect(exp)}
    got: #{inspect(actual)}
    """
    assert actual == exp, msg
  end

  test "Fixed tests" do
    testing(["a", "b", "c"], "f")
    testing(["z"], "z")
    testing(["a", "b"], "c")
    testing(["c"], "c")
    testing(["z", "a"], "a")
    testing(["y", "c", "b"], "d")
    testing([], "z")
  end
end