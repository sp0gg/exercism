defmodule BeerSong do
  @doc """
  Get the entire beer song for a given range of numbers of bottles.
  """
  @spec lyrics(Range.t()) :: String.t()
  def lyrics, do: lyrics(99..0)

  def lyrics(range) do
    range
    |> Enum.map(&(verse/1))
    |> Enum.join("\n")
  end

  @doc """
  Get a single verse of the beer song
  """
  @spec verse(integer) :: String.t()
  def verse(number) do
    """
    #{first_phrase(number)}
    #{last_phrase(number)}
    """
  end

  defp first_phrase(number) do
    "#{starting_noun_subject(number)} #{bottle_noun(number)} of beer on the wall, #{starting_noun(number)} #{bottle_noun(number)} of beer."
  end

  defp last_phrase(0) do
    "Go to the store and buy some more, 99 bottles of beer on the wall."
  end
  defp last_phrase(number) do
    "Take #{pronoun(number)} down and pass it around, #{remaining_noun(number)} #{bottle_noun(number - 1)} of beer on the wall."
  end

  defp starting_noun_subject(0), do: "No more"
  defp starting_noun_subject(number), do: "#{number}"

  defp bottle_noun(1), do: "bottle"
  defp bottle_noun(_), do: "bottles"

  defp starting_noun(0), do: "no more"
  defp starting_noun(number), do: "#{number}"

  defp pronoun(1), do: "it"
  defp pronoun(_), do: "one"

  defp remaining_noun(1), do: "no more"
  defp remaining_noun(number), do: "#{number - 1}"
end
