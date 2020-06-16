defmodule Justify do
  def center(input) do
    maxlen = center(input, 0)
    displayJustified(input, maxlen)
  end

  def center([], len) do
    len
  end

  def center([head | tail], len) do
    if String.length(head) > len do
      center(tail, String.length(head))
    else
      center(tail, len)
    end
  end

  def displayJustified([], _maxlen) do
    ""
  end

  def displayJustified([head | tail], maxlen) do
    currentElemLen = String.length(head)
    paddingRequired = div(maxlen - currentElemLen, 2)
    newHead = String.pad_leading(head, currentElemLen+paddingRequired, " ")
    IO.puts(newHead)
    displayJustified(tail, maxlen)
  end
end

Justify.center(["cat", "dog","tiger", "tyrannosaurus rex","elephant"])

Justify.center(["cat", "zebr´´´åååa","elephanåt"])
