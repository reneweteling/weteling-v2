defmodule Weteling.Hour do
  use Ecto.Schema
  import Ecto.Changeset

  schema "hours" do
    field :date, :date
    field :description, :string
    field :rate, :decimal
    field :total_hours, :decimal
    field :project_id, :id
    field :rate_id, :id

    timestamps()
  end

  @doc false
  def changeset(hour, attrs) do
    hour
    |> cast(attrs, [:rate, :date, :total_hours, :description])
    |> validate_required([:rate, :date, :total_hours, :description])
  end
end
