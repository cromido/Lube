use Mix.Config

config :lube, api_key: System.get_env("MOLLIE_API_KEY")
