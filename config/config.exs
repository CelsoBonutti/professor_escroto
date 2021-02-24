# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :professor_escroto,
  ecto_repos: [ProfessorEscroto.Repo]

config :professor_escroto,
       ProfessorEscroto.Repo,
       migration_primary_key: [type: :uuid]

# Configures the endpoint
config :professor_escroto, ProfessorEscrotoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BTGoAfQeNKZoSZdUJ3VT0qs/m9F0Ix3+OXZSTCejOqWqgDb/6AFpgUsnKBSlaIha",
  render_errors: [view: ProfessorEscrotoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ProfessorEscroto.PubSub,
  live_view: [signing_salt: "Oc7bMIMg"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
