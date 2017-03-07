defmodule Todos.ItemControllerTest do
  use Todos.ConnCase

  test "#index", %{conn: conn} do
    item = insert(:item)

    conn = get conn, item_path(conn, :index)
    assert json_response(conn, 200) == %{
     "items" => [%{
       "title" => item.title,
       "description" => item.description,
       "inserted_at" => Ecto.DateTime.to_iso8601(elem(Ecto.DateTime.cast(item.inserted_at), 1)),
       "updated_at" => Ecto.DateTime.to_iso8601(elem(Ecto.DateTime.cast(item.updated_at), 1))
     }]
    }
  end
end