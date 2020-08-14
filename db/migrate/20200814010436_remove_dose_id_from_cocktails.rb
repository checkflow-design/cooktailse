class RemoveDoseIdFromCocktails < ActiveRecord::Migration[6.0]
  def change
    remove_reference :cocktails, :dose
  end
end
