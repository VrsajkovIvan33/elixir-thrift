defmodule ElixirThrift.Receiver do
  use Tackle.Consumer,
    url: "amqp://localhost",
    exchange: "test-exchange",
    routing_key: "test-messages",
    service: "test-service"

  def handle_message(message) do
    IO.puts "A message arrived. Life is good!"

    IO.puts message

    ElixirThrift.Sender.send(message)

    {:ok}
  end
end
