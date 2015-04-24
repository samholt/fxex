defmodule Fxex do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      # Define workers and child supervisors to be supervised
      # worker(Fxex.Worker, [arg1, arg2, arg3]),
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Fxex.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def work do
    def start do
        url = "http://openexchangerates.org/api/latest.json?app_id=2bcca613e8034f2cbd416a027258d599"
        IO.puts url
    end
end
