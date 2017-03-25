defmodule Lube.API.Payments do
  import Plug.Conn

  alias Mollie
  alias Mollie.Payment

  def create(conn) do
    re=%Payment{amount: 10.00, description: "CroMiDo lube Mollie test payment"}
    |> Mollie.post

    case re do
      {:ok, _body=%{"links" => %{"paymentUrl" => url}}} ->
        conn
        |> put_resp_header("location", url)
        |> send_resp(303, "SEE OTHER")

      {:error, error} ->
        IO.inspect error
        conn
        |> send_resp(500, "INTERNAL SERVER ERROR")
    end
  end

  def split(conn) do
    conn
    |> send_resp(200, "OK")
  end

  def finish(conn) do
    conn
    |> send_resp(200, "OK")
  end
end
