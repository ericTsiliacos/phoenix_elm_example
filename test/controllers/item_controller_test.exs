defmodule Todos.ItemControllerTest do
  use Todos.ConnCase

  test "#index", %{conn: conn} do
    item = insert(:item)

    conn = get conn, item_path(conn, :index)
    assert json_response(conn, 200) == %{
     "items" => [%{
       "title" => item.title,
       "description" => item.description
     }]
    }
  end
end