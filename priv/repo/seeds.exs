# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Todos.Repo.insert!(%Todos.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Todos.Repo.insert!(
    %Todos.Item{
      title: "First Item",
      description: "First description"
    }
)

Todos.Repo.insert!(
    %Todos.Item{
      title: "Second Item",
      description: "Second description."
    }
)

Todos.Repo.insert!(
    %Todos.Item{
      title: "Third Item",
      description: "Third description."
    }
)
