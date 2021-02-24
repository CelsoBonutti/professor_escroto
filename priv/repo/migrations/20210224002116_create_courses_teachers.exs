defmodule ProfessorEscroto.Repo.Migrations.CreateCoursesTeachers do
  use Ecto.Migration

  def change do
    create table(:courses_teachers) do
      add :avg_rating, :decimal, null: false, default: 0.0
      add :teachers_id, references(:teachers, on_delete: :delete_all), null: false
      add :courses_id, references(:courses, on_delete: :delete_all), null: false
    end

    create index(:courses_teachers, :teachers_id)
    create index(:courses_teachers, :courses_id)
  end
end
