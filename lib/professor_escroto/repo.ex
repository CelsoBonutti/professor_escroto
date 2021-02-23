defmodule ProfessorEscroto.Repo do
  use Ecto.Repo,
    otp_app: :professor_escroto,
    adapter: Ecto.Adapters.Postgres
end
