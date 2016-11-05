# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :coop_catalyst,
  ecto_repos: [CoopCatalyst.Repo]

# Configures the endpoint
config :coop_catalyst, CoopCatalyst.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4muX0627RbK0smBbfL4bxuc3CatgXJnu+i2QwvKLxEDbFzOgD6jnqzF5d9UBE38F",
  render_errors: [view: CoopCatalyst.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CoopCatalyst.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
