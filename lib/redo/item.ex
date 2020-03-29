defmodule Redo.Item do
    use Ecto.Schema

    schema "item" do
        field(:part_number)
        field(:name)
        field(:price)

        many_to_many :expense, Redo.Expense, join_through: "expense_item"
        has_many :line_items, Redo.Line_Item
    end
end