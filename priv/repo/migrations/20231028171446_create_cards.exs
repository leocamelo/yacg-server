defmodule Yacg.Repo.Migrations.CreateCards do
  use Ecto.Migration

  def change do
    create table(:cards, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :key, :string
      add :kind, :integer
      add :script, :text

      timestamps(type: :utc_datetime)
    end

    create unique_index(:cards, [:key])
  end
end
