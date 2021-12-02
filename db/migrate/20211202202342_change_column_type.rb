class ChangeColumnType < ActiveRecord::Migration[6.0]
  def change
      change_column(:netflixes, :year, :integer)
  end
end
