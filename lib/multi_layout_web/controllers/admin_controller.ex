defmodule MultiLayoutWeb.AdminController do
  # use MultiLayoutWeb, :controller_admin
  use MultiLayoutWeb, :controller

  def admin(conn, _params) do
    conn
    |> Phoenix.Controller.put_layout(html: {MultiLayoutWeb.Layouts, :admin})
    |> render(:admin)
  end
end
