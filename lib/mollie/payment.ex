defmodule Mollie.Payment do

  @redirectUrl  Application.get_env(:lube, :redirect_url)
  @webhookUrl   Application.get_env(:lube, :webhook_url)

  @derive [Poison.Encoder]
  defstruct [
    :amount,
    :description,
    redirectUrl: @redirectUrl,    # Take default from config
    webhookUrl: @webhookUrl       # Take default from config
  ]

end
