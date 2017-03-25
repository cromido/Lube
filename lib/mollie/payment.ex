defmodule Mollie.Payment do

  @redirectUrl  "http://www.example.com/payments/redirect"
  @webhookUrl   "http://www.example.com/payments/webhook"

  defstruct [
    :amount,
    :description,
    redirectUrl: @redirectUrl,    # Take default from config
    webhookUrl: @webhookUrl       # Take default from config
  ]

end
