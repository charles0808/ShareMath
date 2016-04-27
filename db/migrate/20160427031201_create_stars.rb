class CreateStars < ActiveRecord::Migration[5.0]
  def change
    create_table :stars do |t|
      t.references :user, foreign_key: true
      t.references :formula, foreign_key: true

      t.timestamps
    end

    add_column :formulas, :stars_count, :integer, default: 0
  end
end
