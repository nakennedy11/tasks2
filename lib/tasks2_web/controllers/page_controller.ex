defmodule Tasks2Web.PageController do
  use Tasks2Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def taskmenu(conn, _params) do
    render(conn, "taskmenu.html")
  end

  def profile(conn, _params) do
    render(conn, "profile.html")
  end

end
