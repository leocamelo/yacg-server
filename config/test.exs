import Config

config :yacg, Yacg.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "yacg_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

config :yacg, YacgWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "QX8uCJGfC/Pkb4NekSSNa8EihD2EwAdIzO9szph0mrc7wYDXdhlCNtpiAtlIg4/a",
  server: false

config :logger, level: :warning

config :phoenix, :plug_init_mode, :runtime
