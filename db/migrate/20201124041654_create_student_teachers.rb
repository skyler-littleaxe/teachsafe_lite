class CreateStudentTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :student_teachers do |t|
      t.integer :year
      t.belongs_to :teacher, null: false, foreign_key: true
      t.belongs_to :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
