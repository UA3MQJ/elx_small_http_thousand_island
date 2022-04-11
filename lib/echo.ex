defmodule THISRV.Echo do
  import Plug.Conn
  require Logger

  def init(opts), do: opts

  def call(conn, _opts) do
    [key] = conn.path_info

    case read_body(conn) do
      {:ok, _body, conn} -> send_resp(conn, 200, "Hi there, I love " <> key <> "!")
    end
  end
end
