defmodule SSHt.MixProject do
  use Mix.Project

  def project do
    [
      app: :ssht,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "SSHt",
      source_url: "https://github.com/drowzy/ssht",
      homepage_url: "https://github.com/drowzy/ssht",
      docs: [
        main: "SSHt"
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :ssh],
      mod: {SSHt.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:temp, "~> 0.4", only: :test},
      {:ranch, "~> 1.4"},
      {:dialyxir, "~> 0.5", only: :dev, runtime: false},
      {:ex_doc, "~> 0.16", only: :dev, runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
