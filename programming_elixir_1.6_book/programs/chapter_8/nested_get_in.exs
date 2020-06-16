authors = [
  %{name: "Jose", language: "Elixir"},
  %{name: "Matz", language: "Ruby"},
  %{name: "Larry", language: "Perl"}
]

languages_with_an_r = fn :get, collection, next_fn ->
  for row <- collection do
    if String.contains?(row.language, "r") do
      next_fn.(row)
    end
  end
end

keyss= [languages_with_an_r, :name ]
IO.inspect(keyss)
IO.inspect get_in(authors, keyss)


someothercoll = [
  %{name: "AJ", city: "Pune", language: "Marathi"},
  %{name: "AJ", city: "Zurich", language: "SwissGerman"}
]
IO.inspect get_in(someothercoll, keyss)

