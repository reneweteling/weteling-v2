defmodule WetelingWeb.PageController do
  use WetelingWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
