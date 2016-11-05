defmodule CoopCatalyst.PageController do
  use CoopCatalyst.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
