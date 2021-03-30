# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :distillery_tutorial_with_umbrella,
  ecto_repos: [DistilleryTutorialWithUmbrella.Repo]

config :distillery_tutorial_with_umbrella_web,
  ecto_repos: [DistilleryTutorialWithUmbrella.Repo],
  generators: [context_app: :distillery_tutorial_with_umbrella]

# Configures the endpoint
config :distillery_tutorial_with_umbrella_web, DistilleryTutorialWithUmbrellaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zRM26gnXNVIQc01IHlPcUqgBWOtQ3cC7B+Awyw1uHaidPulCew5ShgnFqDP7Wn0r",
  render_errors: [view: DistilleryTutorialWithUmbrellaWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: DistilleryTutorialWithUmbrella.PubSub,
  live_view: [signing_salt: "P3uvOedr"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
