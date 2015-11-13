defmodule Protobuffs.Mixfile do
  use Mix.Project

  @version File.read!("VERSION") |> String.strip

  def project do
    [app: :protobuffs,
     version: @version,
     description: "An implementation of Google's Protocol Buffers for Erlang, based on ngerakines/erlang_protobuffs.",
     package: package
     deps: deps]
  end

  defp deps do
    [ {:meck, "~> 0.8.3"} ]
  end

  defp package do
    [files: ~w(src scripts test rebar.config Makefile cover.spec AUTHORS ChangeLog README.markdown LICENSE VERSION),
     maintainers: ["Drew Kerrigan"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/basho/erlang_protobuffs"}]
  end
end
