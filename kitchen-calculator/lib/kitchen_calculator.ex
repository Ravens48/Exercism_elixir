defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter(volume_pair) do
    unit = elem(volume_pair, 0)
    volume = get_volume(volume_pair)
    cond do 
        unit == :cup -> {:milliliter, volume * 240}
        unit == :fluid_ounce -> {:milliliter, volume * 30}
        unit == :teaspoon -> {:milliliter, volume * 5}
        unit == :tablespoon -> {:milliliter, volume * 15}
        true -> volume_pair
      end
  end

  def from_milliliter(volume_pair, unit \\ :milliliter)
  def from_milliliter(volume_pair, :milliliter), do: volume_pair
  def from_milliliter(volume_pair, :cup), do: {:cup, get_volume(volume_pair) /240}
  def from_milliliter(volume_pair, :fluid_ounce), do: {:fluid_ounce, get_volume(volume_pair) /30}
  def from_milliliter(volume_pair, :teaspoon), do: {:teaspoon, get_volume(volume_pair) /5}
  def from_milliliter(volume_pair, :tablespoon), do: {:tablespoon, get_volume(volume_pair) /15}
    

  def convert(volume_pair, unit) do
    from_milliliter(to_milliliter(volume_pair), unit)
  end
end
