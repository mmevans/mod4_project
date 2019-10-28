class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.integer :value
      t.integer :user_id
      t.integer :assignment_id
    end
  end
end
