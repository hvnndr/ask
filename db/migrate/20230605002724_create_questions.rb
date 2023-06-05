class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.text :description, null: false
      t.text :answer
      t.references :user, null: false, foreign_key: {to_table: :users}
      t.references :asker, null: true, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
