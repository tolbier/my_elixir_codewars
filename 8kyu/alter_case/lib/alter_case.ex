#defmodule Codewars.StringUtils do
#  def alter_case(str) do
#    import String
#    import Enum
#
#    str
#    |> codepoints
#    |> map(&(if &1 == upcase(&1), do: downcase(&1), else: upcase(&1)))
#    |> to_string
#  end
#end
defmodule Codewars.StringUtils do
  def alter_case(str) do
    str
    |> String.codepoints
    |> Enum.map(
     fn c ->
       alter_case_char(c)
     end
    )
    |> Enum.join
  end

  def alter_case_char(c) do
   cond do
     c >= "A" && c <= "Z" ->
        String.downcase c
     c >="a" && c <= "z" ->
         String.upcase c
     true -> c
   end
  end
end
