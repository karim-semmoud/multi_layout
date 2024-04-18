defmodule MultiLayoutWeb.AppLive do
  use MultiLayoutWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket, layout: {MultiLayoutWeb.Layouts, :app}}
  end
end
