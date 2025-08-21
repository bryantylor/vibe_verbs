defmodule VibeVerbs.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      VibeVerbsWeb.Telemetry,
      VibeVerbs.Repo,
      {DNSCluster, query: Application.get_env(:vibe_verbs, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: VibeVerbs.PubSub},
      # Start a worker by calling: VibeVerbs.Worker.start_link(arg)
      # {VibeVerbs.Worker, arg},
      # Start to serve requests, typically the last entry
      VibeVerbsWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: VibeVerbs.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    VibeVerbsWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
