defmodule PatternMatching.Lists do
  @moduledoc """
  Fix or complete the code to make the tests pass.
  """

  def is_empty?([]) do
    true
  end

  def is_empty?([_head|_tail]) do
    false
  end

  def is_empty?(_other) do
    false
  end

  def has_1_item?([_head]) do
    true
  end

  def has_1_item?([]) do
    false
  end

  def has_1_item?([_head|_tail]) do
    false
  end

  def at_least_one?([]) do
    false
  end

  def at_least_one?([_h]) do
    true
  end

  def at_least_one?([_h|_t]) do
    true
  end

  def return_first_item([]) do
    :error
  end

  def return_first_item([h|_t]) do
    h
  end

  def starts_with_1([h|_t]) when h == 1 do
    true
  end

  def starts_with_1(_other) do
    false
  end

  def sum_pair([first,second]) do
    first+second
  end

  def sum_pair(_other) do
    :error
  end

  def sum_first_2([first,second|tail]) do
    Enum.to_list([first+second|tail])
  end

  def sum_first_2(list), do: list

end
