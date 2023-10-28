defmodule YacgWeb.Router do
  use YacgWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", YacgWeb do
    pipe_through :api
  end
end
