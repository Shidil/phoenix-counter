defmodule PhoenixCounterWeb.CounterLive do
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    socket = assign(socket, :count, 0)
    {:ok, socket}
  end

  def render(assigns) do
    Phoenix.View.render(PhoenixCounterWeb.CounterView, "index.html", assigns)
  end

  def handle_event("increment", _, socket) do
    socket = assign(socket, :count, socket.assigns.count + 1)
    {:noreply, socket}
  end

  def handle_event("decrement", _, socket) do
    socket = assign(socket, :count, socket.assigns.count - 1)
    {:noreply, socket}
  end
end
