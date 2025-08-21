defmodule VibeVerbs.Repo do
  use Ecto.Repo,
    otp_app: :vibe_verbs,
    adapter: Ecto.Adapters.Postgres
end
