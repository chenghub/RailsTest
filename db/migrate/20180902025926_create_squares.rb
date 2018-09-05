class CreateSquares < ActiveRecord::Migration[5.1]
  def change
    create_table :squares do |t|
      t.string :name
      t.string :description
      t.string :color
      t.boolean :defaultStatus
      t.string :link

      t.timestamps
    end
  end
end
