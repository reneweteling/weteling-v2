defmodule Weteling.Repo.Migrations.CreateHours do
  use Ecto.Migration

  def change do
    create table(:hours) do
      add :rate, :decimal
      add :date, :date
      add :total_hours, :decimal
      add :description, :text
      add :project_id, references(:projects, on_delete: :nothing)
      add :rate_id, references(:rates, on_delete: :nothing)

      timestamps()
    end

    create index(:hours, [:project_id])
    create index(:hours, [:rate_id])
  end
end
