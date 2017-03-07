defmodule Todos.ItemView do
  use Todos.Web, :view

  def render("index.json", %{items: items}) do
    %{
      items: Enum.map(items, &item_json/1)
    }
  end

  def item_json(item) do
    %{
      title: item.title,
      description: item.description,
      inserted_at: item.inserted_at,
      updated_at: item.updated_at
    }
  end
end