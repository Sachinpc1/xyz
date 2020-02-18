defmodule XyzWeb.Router do
  use XyzWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", XyzWeb do
    pipe_through :api
  end
end
