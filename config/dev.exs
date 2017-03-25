use Mix.Config

config :lube, [
  base_url: "https://api.mollie.nl/v1",
  redirect_url: "http://www.example.org/payments/redirect",  # Can I construct this?
  webhook_url: "http://www.example.org/payments/webhook"     # Can I construct this?
]
