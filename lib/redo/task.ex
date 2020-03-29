defmodule Redo.Task do
    use Ecto.Schema

    schema "task" do
        field(:description)
        field(:start_date)
        field(:end_date)

        belongs_to(:employee, Employee) 
    end
end