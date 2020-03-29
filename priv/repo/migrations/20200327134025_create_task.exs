defmodule Redo.Repo.Migrations.CreateTask do
  use Ecto.Migration

  def change do
    create table(:task) do
      add :description, :string
      add :start_date, :string
      add :end_date, :string
      add :employee_id, references(:employee)
    end

    create index(:task, :employee_id)
  end
end
