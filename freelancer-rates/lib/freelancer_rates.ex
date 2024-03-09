defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    discount_amount = before_discount * discount / 100
    before_discount - discount_amount
    # Please implement the apply_discount/2 function
  end

  def monthly_rate(hourly_rate, discount) do
    trunc(Float.ceil((apply_discount(daily_rate(hourly_rate), discount) * 22)))
    # Please implement the monthly_rate/2 function
  end

  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function:w
    daily_with_discount = apply_discount(daily_rate(hourly_rate), discount)
    Float.floor((budget / daily_with_discount), 1)
  end
end
