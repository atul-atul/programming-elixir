defmodule JustifyStrings do
  def alignCenter(listOfStrings) do
    listOfStrings
    |> maxLen
    |> padString
    |> display
  end

  defp maxLen(listOfStrings) do
    Enum.map_reduce(listOfStrings, 0, fn str, maxLengthYet ->
      {str, max(String.length(str), maxLengthYet)}
    end)
  end

  defp padString({listOfStrings, maxLen}) do
    Enum.map(listOfStrings, fn x -> String.pad_leading(x, String.length(x) + div(maxLen - String.length(x), 2), " ") end)
  end

  defp display(listOfStrings) do
    Enum.map(listOfStrings, fn x -> IO.puts(x) end)
  end
end

JustifyStrings.alignCenter(["cat", "dog","tiger", "tyrannosaurus rex","elephant"])

JustifyStrings.alignCenter(["cat", "zebr´´´åååa","elephanåt"])
