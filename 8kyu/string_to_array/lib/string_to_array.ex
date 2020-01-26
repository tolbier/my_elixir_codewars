defmodule Kata do
  def string_to_array(s) do
    s
    |> String.split(~r{\s}, trim: true)
  end
end
