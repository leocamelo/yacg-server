import Config

config :yacg, Yacg.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "yacg_dev",
  stacktrace: true,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

config :yacg, YacgWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4000],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  secret_key_base: "DPtvn35ziZfn3XPxGaDHRpZhgBYMMSXz9KjRTFm6vVlOifFm6FRbCNoVS+m612nH",
  watchers: []

config :logger, :console, format: "[$level] $message\n"

config :phoenix, :stacktrace_depth, 20

config :phoenix, :plug_init_mode, :runtime
