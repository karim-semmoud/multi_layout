defmodule MultiLayout.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      MultiLayoutWeb.Telemetry,
      MultiLayout.Repo,
      {DNSCluster, query: Application.get_env(:multi_layout, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: MultiLayout.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: MultiLayout.Finch},
      # Start a worker by calling: MultiLayout.Worker.start_link(arg)
      # {MultiLayout.Worker, arg},
      # Start to serve requests, typically the last entry
      MultiLayoutWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MultiLayout.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    MultiLayoutWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
