# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :api13,
  ecto_repos: [Api13.Repo]

# Configures the endpoint
config :api13, Api13Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "E+70zwNiZZgVdUYn5Fg9k7VRaD+4+JqZZ547J76eNEfrm5Lugq5Ytc5+Uy0dBpAA",
  render_errors: [view: Api13Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Api13.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
