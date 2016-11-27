# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :facegame,
  ecto_repos: [Facegame.Repo]

# Configures the endpoint
config :facegame, Facegame.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "K6pqMoMhxd4Ao8lxL/RGq5IGykOq7or0dT0TkQ4HeQxo+GjX8BCxXTYYIarho6w2",
  render_errors: [view: Facegame.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Facegame.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
