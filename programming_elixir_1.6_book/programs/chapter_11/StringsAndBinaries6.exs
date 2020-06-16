defmodule StringCase do
  def capitalizeSentencesInAParagraph(para) do
    para
    |> splitIntoSentences
    |> convertToDownCase
    |> capitalizeFirstWord
    |> addPeriod
    |> print
  end

  defp splitIntoSentences(paraStr) do
    String.split(paraStr, ". ")
  end

  defp convertToDownCase(list) do
    Enum.map(list, fn x -> String.downcase(x) end)
  end

  defp capitalizeFirstWord(list) do
    Enum.map(list, fn x when is_binary(x) ->
      [String.capitalize(x)]
    end)
  end

  defp addPeriod(list) do
    Enum.map(list, &(&1 ++ ". "))
  end

  defp print(list) do
    IO.puts(Enum.join(list))
  end
end

StringCase.capitalizeSentencesInAParagraph("a mad. dog. Was barking at a. CAT. very aNGRily")
