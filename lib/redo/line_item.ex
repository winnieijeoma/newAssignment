defmodule Redo.Line_Item do
    use Ecto.Schema

    schema "line_item" do
        field(:unit)
        field(:unit_cost)

        belongs_to :item, Redo.Item
        belongs_to :expense, Redo.Expense
    end
end