defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
    |> String.replace(["!","&","@","$","%","^","&",":", ","], "")
    |> String.downcase
    |> String.split([" ", "_"], trim: true)
    |> Enum.reduce(%{}, &(add_word_count/2))
  end

  defp add_word_count(word, acc) do
    Map.update(acc, word, 1, &(&1+1))
  end

end
