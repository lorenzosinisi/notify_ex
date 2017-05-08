# Notify <img src="priv/project_icon.png" alt="Notify" width="50" height="50" />

### Elixir wrapper for notify-send.

## Installation

Install `notify` by adding it to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:notify_ex, "~> 0.1.0"}]
end
```

## Read first
List of parameters must be passed in order as:

`title, description, urgency, time, icon`

If you want to only change let's say, the time but not the urgency you must provide the urgency level anyway. Skipping one will send defaults for the other parameters

If you skip urgency then time and icon will be sent their default values.

## Usage
```elixir
iex> Notify.send("Notify", "Testing Notify", "low", 4000)
iex> Notify.send("Notify", "Another notify test")
```
