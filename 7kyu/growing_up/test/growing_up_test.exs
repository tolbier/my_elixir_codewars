
defmodule TestSolution do
  use ExUnit.Case

  defp testing(u, d, h, exp) do
    actual = Kata.growing_plant u, d, h
    assert actual == exp, "growing_plant(#{u}, #{d}, #{h}): Expected #{exp}, got #{actual}"
  end

  test "basic tests" do
    testing 100, 10, 910, 10
    testing 10, 9, 4, 1
    testing 5, 2, 5, 1
    testing 5, 2, 6, 2
  end
end