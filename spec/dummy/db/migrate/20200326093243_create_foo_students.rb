class CreateFooStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :foo_students do |t|
      t.string :name
      t.belongs_to :school, null: false, foreign_key: true

      t.timestamps
    end
  end
end
