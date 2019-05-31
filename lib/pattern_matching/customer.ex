defmodule PatternMatching.Customer do
  @moduledoc """
  Customer struct used in matching examples.
  """
  alias __MODULE__

  @enforce_keys [:name]
  defstruct [:name, :location, :contact_name, :contact_number, {:orders, []}, {:active, true}]

  @type t :: %Customer{
          name: String.t(),
          location: nil | String.t(),
          contact_name: nil | String.t(),
          contact_number: nil | String.t(),
          orders: list(),
          active: boolean()
        }
end
