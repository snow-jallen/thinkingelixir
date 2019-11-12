defmodule PatternMatching.Binaries do
  @moduledoc """
  Fix or complete the code to make the tests pass.
  """

  def identify_command("SAY "<>say) do
    {:say, say}
  end

  def identify_command("WAVE "<>text) do
    {:wave, text}
  end

  def identify_command(_other), do: {:error, "Unrecognized command"}

  def format_phone(<<area_code::binary-size(3),prefix::binary-size(3), digits::binary-size(4)>>) do
    "(#{area_code}) #{prefix}-#{digits}"
  end

  def format_phone(<<prefix::binary-size(3), digits::binary-size(4)>>) do
    "#{prefix}-#{digits}"
  end

  def format_phone(other), do: other

  def image_type(<<137::size(8), 80::size(8), 78::size(8), 71::size(8), 13::size(8), 10::size(8),
  26::size(8), 10::size(8)>><>_rest_of_image), do: :png

  def image_type(<<255::size(8), 216::size(8), _rest::binary>>), do: :jpg

  def image_type(_other), do: :unknown

end
