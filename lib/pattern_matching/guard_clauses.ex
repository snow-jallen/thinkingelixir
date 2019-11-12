defmodule PatternMatching.GuardClauses do
  @moduledoc """
  Fix or complete the code to make the tests pass.
  """
  alias PatternMatching.User

  def return_numbers(val) when is_float(val), do: val
  def return_numbers(val) when is_integer(val), do: val
  def return_numbers(_), do: :error

  def return_lists(val) when is_list(val), do: val
  def return_lists(_), do: :error

  def return_any_size_tuples(val) when is_tuple(val), do: val
  def return_any_size_tuples(_), do: :error

  def return_maps(val) when is_map(val), do: val
  def return_maps(_), do: :error

  def run_function(val) when is_function(val) do
    val.()
  end
  def run_function(_), do: :error

  def classify_user(%User{age: age}) when age < 0, do: {:error, "Age cannot be negative"}
  def classify_user(%User{age: age}) when age < 18, do: {:ok, :minor}
  def classify_user(%User{age: age}) when is_nil(age), do: {:error, "Age missing"}
  def classify_user(%User{}), do: {:ok, :adult}
  def classify_user(_), do: {:error, "Not a user"}

  def award_child_points(user = %User{age: age}, max_age, points) when age <= max_age do
    %User{user | points: user.points + points}
  end

  def award_child_points(user = %User{}, _max_age, _points) do
    user
  end

end
