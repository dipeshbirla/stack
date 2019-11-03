class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :comment
       t.bigint  :commentable_id
      t.string  :commentable_type
      t.timestamps
    end
  end
end
