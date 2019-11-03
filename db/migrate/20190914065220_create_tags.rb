class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :tags
      t.bigint  :tagable_id
      t.string  :tagable_type
      t.timestamps
    end
  end
end
