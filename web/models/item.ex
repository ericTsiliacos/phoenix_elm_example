defmodule Todos.Item do
  use Todos.Web, :model

  schema "items" do
    field :title
    field :description

    timestamps()
  end
end