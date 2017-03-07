defmodule Todos.ItemControllerTest do
  use Todos.ConnCase

  test "#index", %{conn: conn} do
    item = insert(:item)

    conn = get conn, item_path(conn, :index)
    assert json_response(conn, 200) == %{
     "todos" => [%{
       "title" => todo.title,
       "description" => todo.description,
       "inserted_at" => Ecto.DateTime.to_iso8601(todo.inserted_at),
       "updated_at" => Ecto.DateTime.to_iso8601(todo.updated_at)
     }]
    }
  end
end