defmodule Api13Web.PageController do
  use Api13Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
