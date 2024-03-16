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
    # Please implement the days_late/2 function
  end

  def monday?(datetime) do
    # Please implement the monday?/1 function
  end

  def calculate_late_fee(checkout, return, rate) do
    # Please implement the calculate_late_fee/3 function
  end
end
