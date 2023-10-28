defmodule Yacg.Game.Char do
  @moduledoc false

  use Yacg, :schema

  schema "chars" do
    field :key, :string

    field :atk, :integer
    field :def, :integer
    field :hp, :integer

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(char, attrs) do
    char
    |> cast(attrs, [:key, :atk, :def, :hp])
    |> validate_required([:key, :atk, :def, :hp])
    |> unique_constraint(:key)
  end
end
