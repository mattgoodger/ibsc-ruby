class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :job_title
      t.integer :job_category
      t.integer :job_type
      t.string :company_head_quarters
      t.string :job_region
      t.string :job_apply_link
      t.text :job_description
      t.string :company_name
      t.string :company_statement
      t.string :company_url
      t.string :company_email
      t.text :company_description
      t.string :company_logo
      t.boolean :highlight_job
      t.boolean :feature_job

      t.timestamps
    end
  end
end
