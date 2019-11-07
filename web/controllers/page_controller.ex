defmodule ElixierChat.PageController do
  use ElixierChat.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
