defmodule Mix.Tasks.Compile.Segment do
  def run(_) do
    Mix.shell.cmd "make segment"
  end
end

defmodule Exjieba.Mixfile do
  use Mix.Project

  def project do
    [ app: :exjieba,
      version: "0.0.2",
      elixir: ">= 1.0.0",
      compilers: [ :segment, :elixir, :app ],
      deps: deps()
    ]
  end

  def application do
    [mod: { ExJieba, [] }]
  end

  defp deps do
    []
  end
end
