defmodule ElixirApiSample.PageController do
  use ElixirApiSample.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
