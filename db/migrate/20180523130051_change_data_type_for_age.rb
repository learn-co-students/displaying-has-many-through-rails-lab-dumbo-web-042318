class ChangeDataTypeForAge < ActiveRecord::Migration
  def change
      change_column :patients, :age, :integer
  end
end
