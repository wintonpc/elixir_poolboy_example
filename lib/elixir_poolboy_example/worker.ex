defmodule ElixirPoolboyExample.Worker do
  use GenServer

  def start_link([]) do
    :gen_server.start_link(__MODULE__, [], [])
  end

  def init(state) do
    {:ok, state}
  end

  def handle_call(data, from, state) do
    result = ElixirPoolboyExample.Squarer.square(data)
    {:reply, [result], state}
  end
end
