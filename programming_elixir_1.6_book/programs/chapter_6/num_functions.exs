defmodule NumFunctions do
  def sum(0), do: 0

  def sum(n) when is_integer(n) and n > 0 do
    n + sum(n - 1)
  end

  def gcd(n, 0) when is_integer(n) do
    if n > 0 do
      n
    else
      raise "invalid input"
    end
  end

  def gcd(x, y) do
    if(not is_integer(x) or not is_integer(y)) do
      raise "integers only"
    else
      if x < 0 or y < 0 do
        raise "positive integers only"
      end
      gcd(y, rem(x, y))
    end
  end
end
