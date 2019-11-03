class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.integer :voted
      t.integer :user_id
       t.bigint  :votable_id
      t.string  :votable_type
      t.timestamps
    end
  end
end
