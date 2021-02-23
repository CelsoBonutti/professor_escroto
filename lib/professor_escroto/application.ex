defmodule ProfessorEscroto.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      ProfessorEscroto.Repo,
      # Start the Telemetry supervisor
      ProfessorEscrotoWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: ProfessorEscroto.PubSub},
      # Start the Endpoint (http/https)
      ProfessorEscrotoWeb.Endpoint
      # Start a worker by calling: ProfessorEscroto.Worker.start_link(arg)
      # {ProfessorEscroto.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ProfessorEscroto.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    ProfessorEscrotoWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
