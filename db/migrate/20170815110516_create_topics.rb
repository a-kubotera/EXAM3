class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.string :name
      t.string :contents
      t.string :picture

      t.timestamps
    end
  end
end
