defmodule Todos.UserListTest do
  use Todos.AcceptanceCase, async: true
  import Todos.Factory

  test "displays the welcome text", %{session: session} do
    welcome =
      session
      |> visit("/")
      |> find(Query.css("h1"))
      |> Element.text

    assert welcome == "Welcome to Todos!"
  end

  test "displays a list of items", %{session: session} do
    item = insert(:item)

    item_title =
      session
      |> visit("/")
      |> find(Query.css(".title"))
      |> Element.text

    assert item_title == item.title
  end
end