defmodule MylistSpan do
  def span(from, to) do
    if from <= to do
      [from | span(from + 1, to)]
    else
      []
    end
  end

  def span2(from, to) when from <= to, do: [from | span(from + 1, to)]
  def span2(_from, _to), do: []

  def subList([], _from, _to) do
    []
  end

  def subList([from | tail], from, to) do
    if from === to do
      [from]
    else
      [from] ++ matchTo(tail, to)
    end
  end

  def subList([_ | tail], from, to) do
    subList(tail, from, to)
  end

  defp matchTo([], _to) do
    []
  end

  defp matchTo([to | _tail], to) do
    [to]
  end

  defp matchTo([head | tail], to) do
    [head] ++ matchTo(tail, to)
  end
end

IO.puts(123)
