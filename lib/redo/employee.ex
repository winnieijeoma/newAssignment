defmodule Redo.Employee do
    use Ecto.Schema

    schema "employee" do 
        field(:first_name)
        field(:surname)
        field(:department)

         has_many(:task, Redo.Task)
         has_many(:expense, Redo.Expense)
         has_many :line_item, through: [:expense, :line_item]
    end
end