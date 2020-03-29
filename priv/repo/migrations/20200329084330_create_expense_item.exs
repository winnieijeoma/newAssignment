defmodule Redo.Repo.Migrations.CreateExpenseItem do
  use Ecto.Migration

  def change do
    create table(:expense_item) do
      add :expense_id, references(:expense)
      add :item_id, references(:item)
    end

    create unique_index(:expense_item, [:expense_id, :item_id])
  end
end
