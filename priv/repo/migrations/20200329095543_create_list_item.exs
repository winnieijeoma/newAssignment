defmodule Redo.Repo.Migrations.CreateListItem do
  use Ecto.Migration

  def change do
    create table(:list_item) do
      add :unit, :integer
      add :unit_cost, :integer
      add :item_id, references(:item)
      add :expense_id, references(:expense)
    end
  end
end
