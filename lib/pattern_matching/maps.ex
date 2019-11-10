defmodule PatternMatching.Maps do
  @moduledoc """
  Fix or complete the code to make the tests pass.
  """

  def return_name(%{name: name}) do
    name
  end

  def has_sides?(%{sides: _}) do
    true
  end

  def has_sides?(_) do
    false
  end

  def net_change(%{initial_balance: initial, ending_balance: ending}) do
    {:ok, ending - initial}
  end

  def net_change(_other) do
    {:error, "Missing balance information"}
  end

  def classify_response(%{"success"=> true, "token"=>token}) do
    {:ok, token}
  end

  def classify_response(%{"success"=> false, "messages"=>%{"general"=> %{"result_code"=> -1}}}) do
    {:error, :invalid}
  end

  def classify_response(%{"success"=> false, "messages"=>%{"general"=> %{"result_code"=> 3}}}) do
    {:error, :retry}
  end

  def classify_response(%{"success"=> false, "account"=>%{"status_code"=> "3001"}}) do
    {:error, :frozen}
  end

end
