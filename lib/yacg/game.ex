defmodule Yacg.Game do
  @moduledoc """
  The Game context.
  """

  use Yacg, :context

  alias Yacg.Game.Char

  @doc """
  Returns the list of chars.

  ## Examples

      iex> list_chars()
      [%Char{}, ...]

  """
  def list_chars do
    Repo.all(Char)
  end

  @doc """
  Gets a single char.

  Raises `Ecto.NoResultsError` if the Char does not exist.

  ## Examples

      iex> get_char!(123)
      %Char{}

      iex> get_char!(456)
      ** (Ecto.NoResultsError)

  """
  def get_char!(id), do: Repo.get!(Char, id)

  @doc """
  Creates a char.

  ## Examples

      iex> create_char(%{field: value})
      {:ok, %Char{}}

      iex> create_char(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_char(attrs \\ %{}) do
    %Char{}
    |> Char.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a char.

  ## Examples

      iex> update_char(char, %{field: new_value})
      {:ok, %Char{}}

      iex> update_char(char, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_char(%Char{} = char, attrs) do
    char
    |> Char.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a char.

  ## Examples

      iex> delete_char(char)
      {:ok, %Char{}}

      iex> delete_char(char)
      {:error, %Ecto.Changeset{}}

  """
  def delete_char(%Char{} = char) do
    Repo.delete(char)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking char changes.

  ## Examples

      iex> change_char(char)
      %Ecto.Changeset{data: %Char{}}

  """
  def change_char(%Char{} = char, attrs \\ %{}) do
    Char.changeset(char, attrs)
  end

  alias Yacg.Game.Card

  @doc """
  Returns the list of cards.

  ## Examples

      iex> list_cards()
      [%Card{}, ...]

  """
  def list_cards do
    Repo.all(Card)
  end

  @doc """
  Gets a single card.

  Raises `Ecto.NoResultsError` if the Card does not exist.

  ## Examples

      iex> get_card!(123)
      %Card{}

      iex> get_card!(456)
      ** (Ecto.NoResultsError)

  """
  def get_card!(id), do: Repo.get!(Card, id)

  @doc """
  Creates a card.

  ## Examples

      iex> create_card(%{field: value})
      {:ok, %Card{}}

      iex> create_card(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_card(attrs \\ %{}) do
    %Card{}
    |> Card.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a card.

  ## Examples

      iex> update_card(card, %{field: new_value})
      {:ok, %Card{}}

      iex> update_card(card, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_card(%Card{} = card, attrs) do
    card
    |> Card.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a card.

  ## Examples

      iex> delete_card(card)
      {:ok, %Card{}}

      iex> delete_card(card)
      {:error, %Ecto.Changeset{}}

  """
  def delete_card(%Card{} = card) do
    Repo.delete(card)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking card changes.

  ## Examples

      iex> change_card(card)
      %Ecto.Changeset{data: %Card{}}

  """
  def change_card(%Card{} = card, attrs \\ %{}) do
    Card.changeset(card, attrs)
  end
end
