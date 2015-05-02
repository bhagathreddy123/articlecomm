class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :phone_no
      t.string :email

      t.timestamps null: false
    end
  end
end
