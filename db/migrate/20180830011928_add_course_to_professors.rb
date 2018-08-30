class AddCourseToProfessors < ActiveRecord::Migration[5.2]
  def change
    add_reference :professors, :course, foreign_key: true
  end
end
