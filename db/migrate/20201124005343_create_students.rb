class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :guardian1
      t.string :guardian2
      t.string :guardian1_phone
      t.string :guardian2_phone
      t.string :guardian1_email
      t.string :guardian2_email
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
