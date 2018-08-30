class AddCodeToClasse < ActiveRecord::Migration[5.2]
  def change
    add_column :classes, :code, :integer
  end
end
