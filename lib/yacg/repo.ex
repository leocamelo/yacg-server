defmodule Yacg.Repo do
  use Ecto.Repo,
    otp_app: :yacg,
    adapter: Ecto.Adapters.Postgres
end
