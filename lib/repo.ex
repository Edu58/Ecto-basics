defmodule Learnecto.Repo do
  use Ecto.Repo,
    otp_app: :learnecto,
    adapter: Ecto.Adapters.Postgres
end
