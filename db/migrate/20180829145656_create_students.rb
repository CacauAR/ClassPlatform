class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.integer :registry
      t.string :name
      t.string :sex
      t.string :email
      t.string :password
      t.string :image

      t.timestamps
    end
  end
end
