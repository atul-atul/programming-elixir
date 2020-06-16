defmodule Issues.GithubIssues do
  @user_agent [{"User-agent", "Elixir dave@pragprog.com"}]

  def fetch(user, project) do
    issues_url(user, project)
    |> HTTPoison.get(@user_agent)
  end

  def issues_url(user, project) do
    "https://api.github.com/repos/#{user}/#{project}/issues"
  end

  def handle_response({:ok, %{staus_code: 200, body: body}}) do
    {:ok, body}
  end

  def handle_response({_, %{staus_code: _, body: body}}) do
    IO.puts("#################################### error")
    {:error, body}
  end
end
