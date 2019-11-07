# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elixier_chat,
  ecto_repos: [ElixierChat.Repo]

# Configures the endpoint
config :elixier_chat, ElixierChat.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Kmp/+IbvYl5LRQqeR1nbg0u4xTapCtAiZ0MJ4qHJ8vNyP+GlQSlFAqPKVlkj/kxH",
  render_errors: [view: ElixierChat.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixierChat.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
