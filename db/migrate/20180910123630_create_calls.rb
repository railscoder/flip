class CreateCalls < ActiveRecord::Migration[5.0]
  def change
    create_table :calls do |t|
      t.string :phone, null: false
      t.string :name

      t.timestamps
    end
  end
end
