defmodule Xyz.Repo do
  use Ecto.Repo,
    otp_app: :xyz,
    adapter: Ecto.Adapters.Postgres
end
