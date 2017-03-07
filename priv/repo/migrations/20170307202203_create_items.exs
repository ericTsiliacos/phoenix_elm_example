defmodule Todos.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :title, :string
      add :description, :text

      timestamps()
    end
  end
end
