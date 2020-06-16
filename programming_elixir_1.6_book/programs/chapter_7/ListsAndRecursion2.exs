defmodule FindMax do
  def listmax([]) do
    listmax([], 0)
  end
  def listmax([], currentMax \\ 0) do
    currentMax
  end

  def listmax([head | tail], currentMax) do
    if(head > currentMax) do
      listmax(tail, head)
    else
      listmax(tail, currentMax)
    end
  end
end
