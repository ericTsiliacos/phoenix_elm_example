{:ok, _} = Application.ensure_all_started(:wallaby)
{:ok, _} = Application.ensure_all_started(:ex_machina)

ExUnit.start

Ecto.Adapters.SQL.Sandbox.mode(Todos.Repo, :manual)
Application.put_env(:wallaby, :base_url, Todos.Endpoint.url)
