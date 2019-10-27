defmodule Weteling.Repo.Migrations.CreateRates do
  use Ecto.Migration

  def change do
    create table(:rates) do
      add :name, :string
      add :description, :string
      add :rate, :decimal

      timestamps()
    end

    create unique_index(:rates, [:name])
  end
end
