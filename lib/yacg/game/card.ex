defmodule Yacg.Game.Card do
  @moduledoc false

  use Yacg, :schema

  schema "cards" do
    field :key, :string

    field :kind, :integer
    field :script, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(card, attrs) do
    card
    |> cast(attrs, [:key, :kind, :script])
    |> validate_required([:key, :kind, :script])
    |> unique_constraint(:key)
  end
end
