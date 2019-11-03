class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.text :answer
      t.text :code
      t.integer :vote, :default =>0
      t.integer :user_id
      t.integer :post_id
      t.integer :approved, :default =>0
      t.timestamps
    end
  end
end
