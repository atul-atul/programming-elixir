defmodule MapSum do
  def mapsum([],sum, _func) do
    sum
  end
  def mapsum([head|tail], func) do
    mapsum(tail, 0+func.(head), func)
  end
  def mapsum([head|tail], sum, func) do
    mapsum(tail, sum+func.(head), func)
  end
end
