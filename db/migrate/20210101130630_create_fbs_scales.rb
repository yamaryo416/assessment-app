class CreateFbsScales < ActiveRecord::Migration[6.0]
  def change
    create_table :fbs_scales do |t|
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
