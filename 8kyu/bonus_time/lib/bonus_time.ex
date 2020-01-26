defmodule Codewars.Reward do
  def bonus_time(salary, bonus) do
  "$#{if bonus, do: salary*10, else: salary }"
  end
end
