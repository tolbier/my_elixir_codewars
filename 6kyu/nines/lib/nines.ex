defmodule Kata do
  def nines(n) when is_integer(n), do: nines(Integer.digits(n))
  def nines([9]), do: 1
  def nines([_]), do: 0

  def nines([head | tail]) when head == 9 do
    head_by_nines(head, tail) + Integer.undigits(tail) + 1
  end

  def nines([head | tail]) do
    head_by_nines(head, tail) + nines(tail)
  end

  defp head_by_nines(head, tail), do: head * nines(Enum.map(tail, fn _ -> 9 end))
end
