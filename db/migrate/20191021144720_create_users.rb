class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.integer :school_id
      t.string :gender
      t.date :birthday
      t.boolean :isTeacher?
    end
  end
end
