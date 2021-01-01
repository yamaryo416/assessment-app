class CreateBrsScales < ActiveRecord::Migration[6.0]
  def change
    create_table :brs_scales do |t|
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
