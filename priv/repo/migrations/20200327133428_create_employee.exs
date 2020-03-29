defmodule Redo.Repo.Migrations.CreateEmployee do
  use Ecto.Migration

  def change do
    create table(:employee) do
      add :first_name, :string
      add :surname, :string
      add :department, :string

    end

    create index(:employee, :name)
  end
end
