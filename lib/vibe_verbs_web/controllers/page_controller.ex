defmodule VibeVerbsWeb.PageController do
  use VibeVerbsWeb, :controller

  alias VibeVerbs.Verbs

  def home(conn, _params) do
    top_verbs = Verbs.list_top_verbs(20)
    render(conn, :home, top_verbs: top_verbs)
  end
end
