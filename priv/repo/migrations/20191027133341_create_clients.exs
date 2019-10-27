defmodule Weteling.Repo.Migrations.CreateClients do
  use Ecto.Migration

  def change do
    create table(:clients) do
      add :name, :string
      add :first_name, :string
      add :last_name, :string
      add :address, :string
      add :postalcode, :string
      add :city, :string
      add :email, :string
      add :default_rate_id, references(:rates, on_delete: :nothing)

      timestamps()
    end

    create unique_index(:clients, [:name])
    create index(:clients, [:default_rate_id])
  end
end
