defmodule AddLetters do
  import Enum
  def add_letters(letters) do
    [(letters
      |> join("")
      |> to_charlist
      |> map(fn it -> it - ?a + 1 end)
      |> sum
      |> Kernel.+(?z- ?a)
      |> rem(?z-?a +1)
      |> Kernel.+(?a)
    )]|> List.to_string
  end
end
