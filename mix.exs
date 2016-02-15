defmodule NestedSet.Mixfile do
  use Mix.Project

  def project do
    [app: :nested_set,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: "Nested Set implementation for Ecto/Phoenix. It is our first attempt to make something like acts_as_nested_set in rails. Still in WIP, be cautious if planing to use. ",
     package: [
       licenses: ["Free for any use"],
       links: %{"Github" => "https://github.com/bansalakhil/elixir_nested_set", "Blog" => "http://webonrails.com" },
       maintainers: ["Akhil Bansal"]
       ],
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ecto, "~> 1.1.3"},
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, github: "elixir-lang/ex_doc", only: :dev}
    ]
  end
end
