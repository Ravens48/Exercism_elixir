defmodule BoutiqueInventory do
  def sort_by_price(inventory) do
    Enum.sort_by(inventory, &(&1.price), :asc)
  end

  def with_missing_price(inventory) do
    Enum.filter(inventory, fn x -> x.price == nil end)
  end

  def update_names(inventory, old_word, new_word) do
    Enum.map(inventory, fn x -> %{x | name: String.replace(x.name, old_word, new_word)} end) 
  end

  def increase_quantity(item, count) do
    new_quantities = Map.new(item.quantity_by_size, fn {size, quantity} -> {size, quantity + count} end)
    %{item | quantity_by_size: new_quantities}
  end

  def total_quantity(item) do
    Enum.reduce(item.quantity_by_size, 0, fn ({_size, quantity}, acc) -> quantity + acc end)
    # Please implement the total_quantity/1 function
  end
end
