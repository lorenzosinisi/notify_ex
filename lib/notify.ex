defmodule Notify do
  @moduledoc false

  def send(name, message, opts \\ []) do
    urgency = Keyword.get(opts, :urgency, "normal")
    time = Keyword.get(opts, :time, 2000)
    icon = Keyword.get(opts, :icon, "")
    
    Notify.Notification.send(name, urgency, time, icon, message)
  end
end
