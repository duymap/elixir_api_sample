# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elixir_api_sample,
  ecto_repos: [ElixirApiSample.Repo]

# Configures the endpoint
config :elixir_api_sample, ElixirApiSample.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Jh8QYhtVWddATeFA5GmMc+2ueEB3VwLY8Tcwly+8+b5maC/jDNivKDY8LACRHfAi",
  render_errors: [view: ElixirApiSample.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirApiSample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
