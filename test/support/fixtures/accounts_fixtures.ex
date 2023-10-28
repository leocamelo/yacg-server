defmodule Yacg.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Yacg.Accounts` context.
  """

  @doc """
  Generate a unique user email.
  """
  def unique_user_email, do: "some email#{System.unique_integer([:positive])}"

  @doc """
  Generate a unique user username.
  """
  def unique_user_username, do: "some username#{System.unique_integer([:positive])}"

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        deck: %{},
        email: unique_user_email(),
        password_hash: "some password_hash",
        username: unique_user_username()
      })
      |> Yacg.Accounts.create_user()

    user
  end
end
