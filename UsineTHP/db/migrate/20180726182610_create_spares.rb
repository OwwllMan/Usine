class CreateSpares < ActiveRecord::Migration[5.2]
  def change
    create_table :spares do |t|
      t.string :spare_number

      t.timestamps
    end
  end
end
