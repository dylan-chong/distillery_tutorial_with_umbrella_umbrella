defmodule DistilleryTutorialWithUmbrella.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      DistilleryTutorialWithUmbrella.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: DistilleryTutorialWithUmbrella.PubSub}
      # Start a worker by calling: DistilleryTutorialWithUmbrella.Worker.start_link(arg)
      # {DistilleryTutorialWithUmbrella.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: DistilleryTutorialWithUmbrella.Supervisor)
  end
end
