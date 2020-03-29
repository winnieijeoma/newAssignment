defmodule Redo.Repo.Migrations.CreateExpense do
  use Ecto.Migration

  def change do
    create table(:expense) do
      add :date, :string
      add :status, :string
      add :employee_id, references(:employee)
    end
  end
end
