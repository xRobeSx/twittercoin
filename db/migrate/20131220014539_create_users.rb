class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :screen_name
      t.boolean :authenticated, default: false
      t.string :api_user_id_str

      t.timestamps
    end

    add_index :users, :screen_name

  end
end
