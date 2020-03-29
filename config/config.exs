import Config

config :redo, Redo.Repo,
  database: "redo_repo",
  username: "postgres",
  password: "user",
  hostname: "localhost"

  config :redo,
    ecto_repos: [Redo.Repo]