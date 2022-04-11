defmodule THISRV.MixProject do
  use Mix.Project

  def project do
    [
      app: :elx_small_http_thousand_island,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {THISRV.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:thousand_island, "~> 0.5.2"},
      {:bandit, "~> 0.4.3"},
    ]
  end
end
