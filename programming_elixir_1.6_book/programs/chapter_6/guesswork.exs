defmodule Guesswork do
  def guess(actual, range) do
    guess(0, actual, range)
  end

  def guess(currentguess, actualanswer, currentrange) do
    import IO, only: [puts: 1]
    IO.puts("currentguess is #{currentguess}")

    if actualanswer === currentguess do
      IO.puts("final #{currentguess}")
    else
      l..h = currentrange
      mid = l + div(h - l, 2)

      if actualanswer in l..mid do
        nextguess = l + div(mid - l, 2)
        IO.puts("next call to #{nextguess},#{actualanswer}, #{l}..#{mid}")
        guess(nextguess, actualanswer, l..mid)
      else
        nextguess = mid + 1 + div(h - (mid + 1), 2)
        puts("next call to #{nextguess},#{actualanswer}, #{mid}..#{h}")
        guess(nextguess, actualanswer, (mid + 1)..h)
      end
    end
  end
end
