defmodule Challenge do
  def solution(n) when n<=3, do: 0
  def solution(n) when rem(n-1, 3) == 0 or rem(n-1, 5)==0, do: n-1 + solution(n-1)
  def solution(n), do: solution(n-1)
end
