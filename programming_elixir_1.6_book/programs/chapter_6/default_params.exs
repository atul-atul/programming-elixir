defmodule DefaultParams do
  def myfunc(p1, p2 \\ 42)

  def myfunc(p1, 99) do
    "#{p1} 99"
  end

  def myfunc(p1, p2) do
    IO.puts(p1 + p2)
  end

  def guess_a_num(actual, xyz) do
    guess_a_num(0, actual, xyz)
  end

  def guess_a_num(current_guess, actual, xyz) do
    a..b = xyz
    IO.puts("current_guess #{current_guess} actual #{actual} range #{a} #{b}")

    if actual == current_guess do
      current_guess
    else
      c = a + div(b - a, 2)

      if actual in c..b do
        d = c + div(b - c, 2)
        guess_a_num(d, actual, c..b)
      else
        e = a + div(c - a, 2) + 1
        guess_a_num(e, actual, a..c)
      end
    end
  end

  def guess_num(actual, xyz) do
    guess_a_num(0, actual, xyz)
  end

  def guess_num(current_guess, actual, a..b) do
    if(current_guess == actual) do
      current_guess
    end
    mid = div(b - a, 2)

    if current_guess < actual do
      new_guess = div(mid - a, 2)
      guess_num(new_guess, actual, a..mid)
    else
      new_guess = div(b - mid + 1, 2)
      guess_num(new_guess, actual, (mid + 1)..b)
    end
  end
end
