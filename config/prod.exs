use Mix.Config

config :lube, [
  api_key: System.get_env("MOLLIE_API_KEY"),
  base_url: "https://api.mollie.nl/v1"
]
