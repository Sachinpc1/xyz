# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :xyz,
  ecto_repos: [Xyz.Repo]

# Configures the endpoint
config :xyz, XyzWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VvM1RN86a/vcgkqVTs9Gi5DQzpATop0zErZMlbIelh9Hv21QUt/Bc4GplyBl+bnF",
  render_errors: [view: XyzWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Xyz.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
