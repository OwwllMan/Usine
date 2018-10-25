class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.string :part_number
      t.timestamps
    end
    create_table :assenblies_parts, id: false do |t|
    	t.belongs_to :assenbly, index:true
    	t.belongs_to :part, index:true
    end
  end
end
