use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :coop_catalyst, CoopCatalyst.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :coop_catalyst, CoopCatalyst.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "coop_catalyst_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
