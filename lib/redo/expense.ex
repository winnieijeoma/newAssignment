defmodule Redo.Expense do
    use Ecto.Schema

    schema "expense" do
        field(:date)
        field(:status)

        many_to_many :items, Redo.Item, join_through: "expense_item"
        has_many :line_item, Redo.Line_Item
        belongs_to(:employee, Redo.Employee) 
    end
end