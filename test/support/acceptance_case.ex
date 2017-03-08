defmodule Todos.AcceptanceCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      use Wallaby.DSL

      alias Todos.Repo
      import Ecto
      import Ecto.Changeset
      import Ecto.Query

      import Todos.Router.Helpers
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Todos.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(Todos.Repo, {:shared, self()})
    end

    metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(Todos.Repo, self())
    {:ok, session} = Wallaby.start_session(metadata: metadata)
    {:ok, session: session}
  end
end