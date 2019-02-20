class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :head_quarters
      t.text :statement
      t.string :url
      t.string :email
      t.text :description
      t.string :logo

      t.timestamps
    end
  end
end
