class CreateFormulas < ActiveRecord::Migration[5.0]
  def change
    create_table :formulas do |t|
      t.string :title
      t.text :expression
      t.text :content

      t.timestamps
    end
  end
end
