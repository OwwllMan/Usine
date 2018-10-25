class CreatJointTableAssemblySpare < ActiveRecord::Migration[5.2]
  def change
  	 create_join_table :assemblies, :spares do |t|
  		# t.index [:assembly_id, :spare_id]
  		# t.index [:spare_id, :assembly_id]
  	end
  end
end
