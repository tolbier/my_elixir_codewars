defmodule PersistentBugger do
  def persistence(n) when is_integer(n), do: persistence(Integer.digits(n))
  def persistence([_]), do: 0
  def persistence(l) when is_list(l) do
    1 + persistence(Enum.reduce(l, 1, fn x, acc -> x * acc end))
  end
end