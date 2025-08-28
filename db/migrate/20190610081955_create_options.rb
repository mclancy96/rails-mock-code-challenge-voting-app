class CreateOptions < ActiveRecord::Migration[7.1]
  def change
    create_table :options do |t|
      t.string :text
      t.references :poll, foreign_key: true
      t.integer :votes_count, default: 0
    end
  end
end
