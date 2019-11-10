defmodule PatternMatching.Tuples do
  @moduledoc """
  Fix or complete the code to make the tests pass.
  """

  def day_from_date({_year, _month, day}) do
    day
  end

  def has_three_elements?({_a, _b, _c}) do
    true
  end

  def has_three_elements?(_other) do
    false
  end

  def major_us_holiday({_y, 12, _d}), do: "Christmas"
  def major_us_holiday({_y, 7, _d}), do: "4th of July"
  def major_us_holiday({_y, 1, _d}), do: "New Years"
  def major_us_holiday({_y, _m, _d}), do: "Uh..."

  def greet_user({:ok, name}) do
    "Hello #{name}!"
  end

  def greet_user({:error, _}) do
    "Cannot greet"
  end

  def add_to_result({:ok, num}) do
    {:ok, num+10}
  end

  def add_to_result(other = {:error, _}), do: other

end
