defmodule Protobuffs.Mixfile do
  use Mix.Project

  @version File.read!("VERSION") |> String.strip

  def project do
    [app: :protobuffs,
     version: @version,
     description: "An implementation of Google's Protocol Buffers for Erlang, based on ngerakines/erlang_protobuffs.",
     package: package,
     deps: deps]
  end

  defp deps do
    [ {:meck, "~> 0.8.4"} ]
  end

  defp package do
    [files: ~w(scripts src test AUTHORS CONTRIBUTING.md cover.spec LICENSE Makefile README.md rebar.config VERSION),
     maintainers: ["Drew Kerrigan"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/basho/erlang_protobuffs"}]
  end
end
