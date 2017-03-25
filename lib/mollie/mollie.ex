defmodule Mollie do

  @base_url   "https://api.mollie/nl/v1"            # Take default from config
  @api_key    "test_ur5xrbP7d8SuwvgxzqnU5x52JE8JVr" # Take default from config

  alias Mollie.Payment

  def post(payload=%Payment{}) do

  end

end
