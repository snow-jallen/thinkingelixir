defmodule PatternMatching.Structs do
  @moduledoc """
  Fix or complete the code to make the tests pass.
  """
  alias PatternMatching.{Customer, User}

  def get_name(%{name: name}) do
    {:ok, name}
  end

  def get_name(_other) do
    {:error, "Doesn't have a name"}
  end

  def create_greeting(%{active: active}) when active == false do
    {:error, "Recipient is inactive"}
  end

  def create_greeting(%User{}=user) do
    {:ok, "Greetings user #{user.name}!"}
  end

  def create_greeting(%Customer{}=customer) do
    {:ok, "Howdy customer #{customer.name}!"}
  end

  def deactivate_user(%User{}=user) do
    {:ok, %User{user | active: false}}
  end

  def deactivate_user(_other) do
    {:error, "Not a User"}
  end

end
