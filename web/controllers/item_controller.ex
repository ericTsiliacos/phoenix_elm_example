defmodule Todos.ItemController do
  use Todos.Web, :controller

  alias Todos.Item

  def index(conn, _params) do
    item = Repo.all(Item)
    render conn, "index.json", items: item
  end
end
