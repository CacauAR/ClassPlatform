class AddTitleToArquives < ActiveRecord::Migration[5.2]
  def change
    add_column :arquives, :title, :string
  end
end
