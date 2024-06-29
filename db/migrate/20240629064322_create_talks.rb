class CreateTalks < ActiveRecord::Migration[7.1]
  def change
    create_table :talks do |t|
      t.integer :feeling,   null: false
      t.text :contents,  null:false

      t.timestamps
    end
  end
end
