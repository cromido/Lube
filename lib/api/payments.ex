defmodule Lube.API.Payments do
  import Plug.Conn

  alias Mollie
  alias Mollie.Payment

  def create(conn) do
    r=%Payment{amount: 10.00, description: "CroMiDo lube Mollie test payment"}
    |> Mollie.post

    conn
  end

  def split(conn) do
    conn
    |> send_resp(200, "OK")
  end

  def finish(conn) do
    conn
  end
end
