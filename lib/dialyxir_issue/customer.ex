defmodule DialyxirIssue.Customer do
  # This causes a dialyzer issue in Elixir 1.8 and 1.8.1 due to
  # https://github.com/elixir-lang/elixir/pull/8841

  @derive {Inspect, except: [:password]}
  defstruct [:name, :password]
end
