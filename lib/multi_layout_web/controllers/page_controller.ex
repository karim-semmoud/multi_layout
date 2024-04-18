defmodule MultiLayoutWeb.PageController do
  use MultiLayoutWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def app(conn, _params) do
    render(conn, :app)
    # Or to update de the default layout
    # conn
    # |> Phoenix.Controller.put_layout( html: {MultiLayoutWeb.Layouts, :admin})
    # |> render(:app)
  end
end
