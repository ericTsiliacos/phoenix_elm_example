defmodule Todos.Router do
  use Todos.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Todos do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

   scope "/api", Todos do
     pipe_through :api

     resources "/items", ItemController, only: [:index]
   end
end
