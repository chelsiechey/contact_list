class ChangeNameToFirstName < ActiveRecord::Migration[6.0]
  def change      
                  #table name #old  #new
    rename_column :contacts, :name, :first_name
  end
end
