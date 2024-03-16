defmodule LibraryFees do
  def datetime_from_string(string) do
    NaiveDateTime.from_iso8601!(string)
    # Please implement the datetime_from_string/1 function
  end

  def before_noon?(datetime) do
    datetime.hour < 12
    # Please implement the before_noon?/1 function
  end

  def return_date(checkout_datetime) do
    days = if before_noon?(checkout_datetime) == true, do: 28, else: 29
    checkout_datetime
    |> NaiveDateTime.add(days * 24 * 60 * 60)
    |> NaiveDateTime.to_date
    # Please implement the return_date/1 function
  end

  def days_late(planned_return_date, actual_return_datetime) do
    actual_return_datetime
    |> NaiveDateTime.to_date
    |> Date.diff(planned_return_date)
    |> day_late_values
  end

  defp day_late_values(days_late) do
    cond do
        days_late < 0 -> 0
        true -> days_late
      end
  end

  defp compute_monday_offer(day, monday?, rate) do
    cond do 
        monday? == true -> trunc(day * rate * 0.5)
        true -> day * rate
      end
  end

  def monday?(datetime) do
    datetime
    |> NaiveDateTime.to_date
    |> Date.day_of_week == 1
    # Please implement the monday?/1 function
  end

  def calculate_late_fee(checkout, return, rate) do
    checkout_date = checkout |> datetime_from_string |> return_date
    return_naive = datetime_from_string(return)
    delay = days_late(checkout_date, return_naive)
    compute_monday_offer(delay, monday?(return_naive), rate)
    
    # Please implement the calculate_late_fee/3 function
  end
end
