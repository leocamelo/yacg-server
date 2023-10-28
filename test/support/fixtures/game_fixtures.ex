defmodule Yacg.GameFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Yacg.Game` context.
  """

  @doc """
  Generate a unique char key.
  """
  def unique_char_key, do: "some key#{System.unique_integer([:positive])}"

  @doc """
  Generate a char.
  """
  def char_fixture(attrs \\ %{}) do
    {:ok, char} =
      attrs
      |> Enum.into(%{
        atk: 42,
        def: 42,
        hp: 42,
        key: unique_char_key()
      })
      |> Yacg.Game.create_char()

    char
  end

  @doc """
  Generate a unique card key.
  """
  def unique_card_key, do: "some key#{System.unique_integer([:positive])}"

  @doc """
  Generate a card.
  """
  def card_fixture(attrs \\ %{}) do
    {:ok, card} =
      attrs
      |> Enum.into(%{
        key: unique_card_key(),
        kind: 42,
        script: "some script"
      })
      |> Yacg.Game.create_card()

    card
  end
end
