class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :question
      t.text :code
      t.integer :vote, :default =>0
      t.integer :user_id
      t.timestamps
    end
  end
end
