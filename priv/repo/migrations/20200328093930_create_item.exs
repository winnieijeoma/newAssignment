defmodule Redo.Repo.Migrations.CreateItem do
  use Ecto.Migration

  def change do
    create table(:item) do
      add :part_number, :integer
      add :name, :string
      add :price, :float
    end
  end
end
