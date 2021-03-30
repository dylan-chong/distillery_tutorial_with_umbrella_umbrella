defmodule DistilleryTutorialWithUmbrella.Repo do
  use Ecto.Repo,
    otp_app: :distillery_tutorial_with_umbrella,
    adapter: Ecto.Adapters.Postgres
end
