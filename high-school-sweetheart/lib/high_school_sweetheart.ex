defmodule HighSchoolSweetheart do
  def first_letter(name) do
    String.trim(name)
    |> String.at(0)
    # Please implement the first_letter/1 function
  end

  def initial(name) do
    first_letter(name)
    |> String.upcase()
    |>Kernel.<>(".")
    # Please implement the initial/1 function
  end

  def initials(full_name) do
    String.split(full_name)
    |> Enum.map(&initial/1)
    |> Enum.join(" ")
    # Please implement the initials/1 function
  end

  def pair(full_name1, full_name2) do
    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{initials(full_name1)}  +  #{initials(full_name2)}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
    # Please implement the pair/2 function
  end
end
