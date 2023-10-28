defmodule Yacg.Accounts.User do
  @moduledoc false

  use Yacg, :schema

  schema "users" do
    field :email, :string
    field :password_hash, :string
    field :username, :string

    field :deck, :map

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :username, :password_hash, :deck])
    |> validate_required([:email, :username, :password_hash])
    |> unique_constraint(:username)
    |> unique_constraint(:email)
  end
end
