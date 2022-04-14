class CreateMakeups < ActiveRecord::Migration[7.0]
  def change
    create_table :makeups do |t|
      t.string :name
      t.string :rating
      t.string :colour

      t.timestamps
    end
  end
end
