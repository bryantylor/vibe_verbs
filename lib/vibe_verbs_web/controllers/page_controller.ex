defmodule VibeVerbsWeb.PageController do
  use VibeVerbsWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
