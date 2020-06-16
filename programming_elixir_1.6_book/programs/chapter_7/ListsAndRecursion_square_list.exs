defmodule ListSquare do
  def square([]) do
    []
  end
  def square([head|tail]) do
    [head*head | square(tail)]
  end
end
