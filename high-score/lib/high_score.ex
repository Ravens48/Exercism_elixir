defmodule HighScore do
  def new() do
    %{}
  end

  def add_player(scores, name, score \\ 0) do
    Map.put(scores, name, score )
  end

  def remove_player(scores, name) do
    Map.delete(scores, name)
  end

  def reset_score(scores, name) do
    Map.update(scores, name, 0, fn existing_value -> existing_value * 0 end)
  end

  def update_score(scores, name, score) do
    Map.update(scores, name, score, fn existing_value -> existing_value *  existing_value + score end)
  end

  def get_players(scores) do
      Map.keys(scores)
  end
end
