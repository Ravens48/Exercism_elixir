defmodule BirdCount do
  def today([]), do: nil
  def today(list) do
    hd(list)
    # Please implement the today/1 function
  end

  def increment_day_count([]) , do: [1]
  def increment_day_count(list) do
    [today(list) + 1 | tl(list)]
    # Please implement the increment_day_count/1 function
  end

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?(list) do
    cond do 
      today(list) == 0 -> true
        true -> has_day_without_birds?(tl(list))
      end
  end

  def total([]), do: 0
  def total(list) do
    hd(list) + total(tl(list))
    # Please implement the total/1 function
  end

  def busy_days([]), do: 0
  def busy_days([h | t]) when h >= 5, do: 1 + busy_days(t)
  def busy_days(list) , do: busy_days(tl(list))
end
