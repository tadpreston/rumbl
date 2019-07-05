defmodule Rumbl.Accounts do

@moduledoc """
The Accounts context.
"""
  alias Rumbl.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "José", username: "josevalim"},
      %User{id: "2", name: "Bruce", username: "redrapids"},
      %User{id: "3", name: "Chris", username: "chrismccord"}
    ]
  end

  def get_user(id) do
    list_users()
    |> Enum.find(fn map -> map.id == id end)
  end

  def get_user_by(params) do
    list_users()
    |> Enum.find(fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
