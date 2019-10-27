defmodule Weteling.Rate do
  use Ecto.Schema
  import Ecto.Changeset

  schema "rates" do
    field :description, :string
    field :name, :string
    field :rate, :decimal

    timestamps()
  end

  @doc false
  def changeset(rate, attrs) do
    rate
    |> cast(attrs, [:name, :description, :rate])
    |> validate_required([:name, :description, :rate])
    |> unique_constraint(:name)
  end
end
