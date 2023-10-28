defmodule Yacg.GameTest do
  use Yacg.DataCase

  alias Yacg.Game

  describe "chars" do
    alias Yacg.Game.Char

    import Yacg.GameFixtures

    @invalid_attrs %{atk: nil, def: nil, hp: nil, key: nil}

    test "list_chars/0 returns all chars" do
      char = char_fixture()
      assert Game.list_chars() == [char]
    end

    test "get_char!/1 returns the char with given id" do
      char = char_fixture()
      assert Game.get_char!(char.id) == char
    end

    test "create_char/1 with valid data creates a char" do
      valid_attrs = %{atk: 42, def: 42, hp: 42, key: "some key"}

      assert {:ok, %Char{} = char} = Game.create_char(valid_attrs)
      assert char.atk == 42
      assert char.def == 42
      assert char.hp == 42
      assert char.key == "some key"
    end

    test "create_char/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Game.create_char(@invalid_attrs)
    end

    test "update_char/2 with valid data updates the char" do
      char = char_fixture()
      update_attrs = %{atk: 43, def: 43, hp: 43, key: "some updated key"}

      assert {:ok, %Char{} = char} = Game.update_char(char, update_attrs)
      assert char.atk == 43
      assert char.def == 43
      assert char.hp == 43
      assert char.key == "some updated key"
    end

    test "update_char/2 with invalid data returns error changeset" do
      char = char_fixture()
      assert {:error, %Ecto.Changeset{}} = Game.update_char(char, @invalid_attrs)
      assert char == Game.get_char!(char.id)
    end

    test "delete_char/1 deletes the char" do
      char = char_fixture()
      assert {:ok, %Char{}} = Game.delete_char(char)
      assert_raise Ecto.NoResultsError, fn -> Game.get_char!(char.id) end
    end

    test "change_char/1 returns a char changeset" do
      char = char_fixture()
      assert %Ecto.Changeset{} = Game.change_char(char)
    end
  end

  describe "cards" do
    alias Yacg.Game.Card

    import Yacg.GameFixtures

    @invalid_attrs %{key: nil, kind: nil, script: nil}

    test "list_cards/0 returns all cards" do
      card = card_fixture()
      assert Game.list_cards() == [card]
    end

    test "get_card!/1 returns the card with given id" do
      card = card_fixture()
      assert Game.get_card!(card.id) == card
    end

    test "create_card/1 with valid data creates a card" do
      valid_attrs = %{key: "some key", kind: 42, script: "some script"}

      assert {:ok, %Card{} = card} = Game.create_card(valid_attrs)
      assert card.key == "some key"
      assert card.kind == 42
      assert card.script == "some script"
    end

    test "create_card/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Game.create_card(@invalid_attrs)
    end

    test "update_card/2 with valid data updates the card" do
      card = card_fixture()
      update_attrs = %{key: "some updated key", kind: 43, script: "some updated script"}

      assert {:ok, %Card{} = card} = Game.update_card(card, update_attrs)
      assert card.key == "some updated key"
      assert card.kind == 43
      assert card.script == "some updated script"
    end

    test "update_card/2 with invalid data returns error changeset" do
      card = card_fixture()
      assert {:error, %Ecto.Changeset{}} = Game.update_card(card, @invalid_attrs)
      assert card == Game.get_card!(card.id)
    end

    test "delete_card/1 deletes the card" do
      card = card_fixture()
      assert {:ok, %Card{}} = Game.delete_card(card)
      assert_raise Ecto.NoResultsError, fn -> Game.get_card!(card.id) end
    end

    test "change_card/1 returns a card changeset" do
      card = card_fixture()
      assert %Ecto.Changeset{} = Game.change_card(card)
    end
  end
end
