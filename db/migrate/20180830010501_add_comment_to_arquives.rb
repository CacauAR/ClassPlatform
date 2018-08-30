class AddCommentToArquives < ActiveRecord::Migration[5.2]
  def change
    add_column :arquives, :comment, :text
  end
end
