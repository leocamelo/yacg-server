defmodule Yacg.Repo.Migrations.CreateChars do
  use Ecto.Migration

  def change do
    create table(:chars, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :key, :string
      add :atk, :integer
      add :def, :integer
      add :hp, :integer

      timestamps(type: :utc_datetime)
    end

    create unique_index(:chars, [:key])
  end
end
