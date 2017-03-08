defmodule Todos.UserListTest do
  use Todos.AcceptanceCase, async: true

  test "displays a list of items", %{session: session} do
    welcome =
      session
      |> visit("/")
      |> find(Query.css(".jumbotron h2"))
      |> Element.text

    assert welcome == "Welcome to Phoenix!"
  end
end