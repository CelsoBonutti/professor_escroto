defmodule ProfessorEscroto.Repo.Migrations.CreateTeachers do
  use Ecto.Migration

  def change do
    create table(:teachers) do
      add :name, :text, null: false
    end
  end
end
