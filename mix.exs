defmodule MyApp.MixProject do
  use Mix.Project

  def project do
    [
      app: :'my-app',
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      compilers: Mix.compilers() ++ [:lfe],
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :rebar3_lfe],
      mod: {:'my-app-app', []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:mix_lfe, path: "../mix_lfe", override: true},
      {:rebar3_lfe, path: "../rebar3_lfe", override: true},
      {:ltest, git: "https://github.com/lfex/ltest", app: false, override: true},
      {:lfe, path: "../lfe", app: false, override: true}
    ]
  end
end
