import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix_counter, PhoenixCounterWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "EQ83THfnED/9j+KgFb+l3Up0RvJN/RJ8TlDXkZPwoafST8mGJBCTIKL+5t91C38c",
  server: false

# In test we don't send emails.
config :phoenix_counter, PhoenixCounter.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
