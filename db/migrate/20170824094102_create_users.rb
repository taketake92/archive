class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :client_id
      t.string :insta_user_id
      t.string :insta_access_token_id

      t.timestamps
    end
  end
end
