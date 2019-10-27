defmodule Weteling.Client do
  use Ecto.Schema
  import Ecto.Changeset

  schema "clients" do
    field :address, :string
    field :city, :string
    field :email, :string
    field :first_name, :string
    field :last_name, :string
    field :name, :string
    field :postalcode, :string
    field :default_rate_id, :id

    timestamps()
  end

  @doc false
  def changeset(client, attrs) do
    client
    |> cast(attrs, [:name, :first_name, :last_name, :address, :postalcode, :city, :email])
    |> validate_required([:name, :first_name, :last_name, :address, :postalcode, :city, :email])
    |> unique_constraint(:name)
  end
end
