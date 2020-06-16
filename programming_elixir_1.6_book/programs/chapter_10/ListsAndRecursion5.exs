defmodule ListOps do
  def flatten([]) do
    []
  end

  def flatten([head | tail]) do
    if(is_list(head)) do
      flatten(head) ++ flatten(tail)
    else
      [head] ++ flatten(tail)
    end
  end

end

IO.inspect(ListOps.flatten([1, [2, 3, 4, [5, [6]]], 7]))
