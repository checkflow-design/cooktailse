class AddDoseToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_reference :cocktails, :dose, null: false, foreign_key: true
  end
end
