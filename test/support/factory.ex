defmodule Todos.Factory do
  use ExMachina.Ecto, repo: Todos.Repo

  def item_factory do
    %Todos.Item{
      title: "My Special Item",
      description: "Cool things go here"
    }
  end
end