import Config

config :yacg,
  ecto_repos: [Yacg.Repo],
  generators: [timestamp_type: :utc_datetime, binary_id: true]

config :yacg, YacgWeb.Endpoint,
  url: [host: "localhost"],
  adapter: Phoenix.Endpoint.Cowboy2Adapter,
  render_errors: [
    formats: [json: YacgWeb.ErrorJSON],
    layout: false
  ],
  pubsub_server: Yacg.PubSub,
  live_view: [signing_salt: "1Cwfc6uo"]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :json_library, Jason

import_config "#{config_env()}.exs"
