class CreateLoginUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :login_users do |t|
      t.string :nickname
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
