defmodule Notify do
  @moduledoc false

  def send(name, message, urgency \\ "normal", time \\ 2000, icon \\ "")
  def send(name, message, urgency, time, icon) do
    Notify.Notification.send(name, urgency, time, icon, message)
  end
end
