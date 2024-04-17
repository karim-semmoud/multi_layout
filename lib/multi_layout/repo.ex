defmodule MultiLayout.Repo do
  use Ecto.Repo,
    otp_app: :multi_layout,
    adapter: Ecto.Adapters.Postgres
end
