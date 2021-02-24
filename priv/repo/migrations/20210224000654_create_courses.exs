defmodule ProfessorEscroto.Repo.Migrations.CreateCourses do
  use Ecto.Migration

  def change do
    create table :courses do
      add :external_id, :text, null: false
      add :name, :text, null: :false
    end
  end
end
