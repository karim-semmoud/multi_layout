defmodule MultiLayoutWeb.AdminHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use MultiLayoutWeb, :html

  embed_templates "admin_html/*"
end
