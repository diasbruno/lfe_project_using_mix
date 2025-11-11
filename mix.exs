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
      {:mix_lfe, path: "./mix_lfe", override: true},
      {:ltest, git: "https://github.com/lfex/ltest", tag: "0.13.11", app: false, override: true},
      {:lfe, path: "./lfe", app: false, override: true}
    ]
  end
end
