class CreateMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :memberships do |t|
      t.integer :user_id, null: false
      t.integer :group_id, null: false
      t.timestamps
    end

    add_index :memberships, [:user_id, :group_id], unique: true
    add_index :memberships, :group_id
  end
end
