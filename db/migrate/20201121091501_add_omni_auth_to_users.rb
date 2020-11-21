class AddOmniAuthToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :primary_user_full_name, :string
    add_column :users, :avatar_url, :string
    add_column :users, :uid, :string

  end
end
