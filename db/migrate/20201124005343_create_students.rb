class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :guardian_1
      t.string :guardian_2
      t.string :guardian_1_phone
      t.string :guardian_2_phone
      t.string :guardian_1_email
      t.string :guardian_2_email
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
