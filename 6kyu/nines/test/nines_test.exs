defmodule TestSuite do
  use ExUnit.Case

  def do_test(n, sol), do: assert(Kata.nines(n) == sol)

  describe "How many nines?" do
    test "Basic Tests: ines " do
      do_test(10, 1)
      do_test(18, 1)
      do_test(19, 2)
      do_test(89, 9)
      do_test(90, 10)

      do_test(100, 19)
      do_test(1000, 271)
      do_test(3950, 1035)
    end
  end
end
