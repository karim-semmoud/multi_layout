defmodule MultiLayoutWeb.AdminLive do
  use MultiLayoutWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket, layout: {MultiLayoutWeb.Layouts, :admin}}
  end
end
