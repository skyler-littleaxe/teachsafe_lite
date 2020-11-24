class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.belongs_to :user, null: false, foreign_key: true
      

      t.timestamps
    end
  end
end
