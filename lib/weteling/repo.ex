defmodule Weteling.Repo do
  use Ecto.Repo,
    otp_app: :weteling,
    adapter: Ecto.Adapters.Postgres
end
