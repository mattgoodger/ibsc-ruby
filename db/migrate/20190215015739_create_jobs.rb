class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :category
      t.integer :job_type
      t.string :region
      t.string :apply_link
      t.text :description
      t.references :company, foreign_key: true
      t.boolean :highlight
      t.boolean :featured

      t.timestamps
    end
  end
end
