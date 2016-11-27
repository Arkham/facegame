defmodule Facegame.PageController do
  use Facegame.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
