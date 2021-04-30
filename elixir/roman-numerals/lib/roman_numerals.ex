defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
    Integer.to_charlist(number)
    |> Enum.reverse
    |> Enum.with_index
    |> Enum.reduce([], &(append_numeral/2))
    |> Enum.join
  end

  defp append_numeral({char, decimal_place}, acc) do
    [lookup_numeral(decimal_place, char) | acc]
  end

  defp lookup_numeral(decimal_place, char) do
    ones = %{?1 => "I", ?2 => "II", ?3 => "III", ?4 => "IV", ?5 => "V", ?6 => "VI", ?7 => "VII", ?8 => "VIII", ?9 => "IX"}
    tens = %{?1 => "X", ?2 => "XX", ?3 => "XXX", ?4 => "XL", ?5 => "L", ?6 => "LX", ?7 => "LXX", ?8 => "LXXX", ?9 => "XC"}
    hundreds = %{?1 => "C", ?2 => "CC", ?3 => "CCC", ?4 => "CD", ?5 => "D", ?6 => "DC", ?7 => "DCC", ?8 => "DCCC", ?9 => "CM"}
    thousands = %{?1 => "M", ?2 => "MM", ?3 => "MMM"}
    numerals_places = {ones, tens, hundreds, thousands}

    elem(numerals_places, decimal_place)[char]
  end
end
