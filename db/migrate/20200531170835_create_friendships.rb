class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.string :user
      t.string :references

      t.timestamps
    end
  end
end
