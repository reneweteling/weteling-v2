defmodule Weteling.Repo.Migrations.CreateProjects do
  use Ecto.Migration

  def change do
    create table(:projects) do
      add :name, :string
      add :description, :text
      add :client_id, references(:clients, on_delete: :nothing)

      timestamps()
    end

    create unique_index(:projects, [:name])
    create index(:projects, [:client_id])
  end
end
