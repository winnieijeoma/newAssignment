defmodule Redo.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Starts a worker by calling: Redo.Worker.start_link(arg)
      # {Redo.Worker, arg}
      {Redo.Repo, []}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Redo.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
