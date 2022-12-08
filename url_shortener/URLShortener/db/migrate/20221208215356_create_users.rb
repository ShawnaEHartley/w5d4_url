class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.timestamps
      t.index [:email], name: 'index_users_on_email', unique: true
    end

    # same as line 6
    # add_index :email, unique: true
  end
end
