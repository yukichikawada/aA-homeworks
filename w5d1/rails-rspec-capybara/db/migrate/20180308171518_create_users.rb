class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email,            null: false, presence: true
      t.string :password_digest,  null: false, presence: true
      t.string :session_token,    null: false, presence: true
    end

    add_index :users, :email,         unique: true
    add_index :users, :session_token, unique: true
  end
end
