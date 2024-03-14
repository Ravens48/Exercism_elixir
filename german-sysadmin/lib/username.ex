defmodule Username do
  def sanitize([]), do: [] 
  def sanitize([head | tail]) do
    cleaned = 
    case head do 
      ?ä -> 'ae'
      ?ö -> 'oe'
      ?ü -> 'ue'
      ?ß -> 'ss'
      #adding to the list
      x when (x >= ?a and x <= ?z) -> [x]
      ?_ -> '_'
      _ -> ''
    end
    cleaned ++ sanitize(tail)
  end
end
