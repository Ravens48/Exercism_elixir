defmodule BasketballWebsite do
  def extract_from_path(data, path) do
    String.split(path, ".")
    |> Enum.reduce(data, fn x, acc -> acc[x] end)
    # Please implement the extract_from_path/2 function
  end

  def get_in_path(data, path) do
    Kernel.get_in(data, String.split(path, "."))
    # Please implement the get_in_path/2 function
  end
end
