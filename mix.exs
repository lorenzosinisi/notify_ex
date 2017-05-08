defmodule Notify.Mixfile do
  use Mix.Project

  def project do
    [app: :notify_ex,
     version: "0.1.2",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     source_url: "https://github.com/aguxez/notify_ex",
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  defp description do
    """
    Notify_ex is just a simple wrapper around 'notify-send' for Unix systems.
    """
  end

  defp package do
    [
      maintainers: ["Miguel Diaz"],
      links: %{Github: "https://github.com/aguxez/notify_ex"},
      licenses: ["MIT License"]
    ]
  end

  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev}]
  end
end
