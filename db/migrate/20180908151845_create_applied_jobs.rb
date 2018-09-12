class CreateAppliedJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :applied_jobs do |t|
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
