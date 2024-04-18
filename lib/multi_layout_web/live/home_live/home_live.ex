defmodule MultiLayoutWeb.HomeLive do
  # use MultiLayoutWeb, :live_view_no_layout
  use MultiLayoutWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket, layout: false}
  end
end
