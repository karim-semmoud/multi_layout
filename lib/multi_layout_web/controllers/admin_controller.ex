defmodule MultiLayoutWeb.AdminController do
  use MultiLayoutWeb, :controller_admin

  def admin(conn, _params) do
    render(conn, :admin)
  end
end
