defmodule ElixirThrift.Sender do

  @options  %{
    url: "amqp://test:test@192.168.0.13:5672",
    exchange: "fuck-exchange",
    routing_key: "fuck-messages",
  }

  def send(message) do
    message = message <> "_RESPONSE"
    IO.puts "Sending message #{message}"
    Tackle.publish(message, @options)

    #msg = Structs.Message.new(url: "neki http", payload: "ovo je tovar")
    #IO.inspect msg
    #msg_tuple = Structs.to_erlang(msg, {:models_types, :Message}
    #IO.puts msg

    {:ok}
  end

end
