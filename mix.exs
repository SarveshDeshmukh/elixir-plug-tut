defmodule PlugEx.Mixfile do
  use Mix.Project


  def project do
    [
      app: :plug_ex,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :plug, :cowboy],
      mod: {PlugEx, []},
      env: [cowboy_port: 8000]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  def deps do
  [{:cowboy, "~> 1.0.0", override: true},
   {:plug, "~> 1.0", override: true}]
end
end
