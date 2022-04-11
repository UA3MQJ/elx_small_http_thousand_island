defmodule THISRV.Application do
  use Application

  def start(_type, _args) do
    children = [
      {Bandit, plug: THISRV.Echo, scheme: :http, options: [port: 4000, num_acceptors: 100]},
    ]

    opts = [strategy: :one_for_one, name: MyApp.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
