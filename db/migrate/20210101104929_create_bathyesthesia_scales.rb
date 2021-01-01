class CreateBathyesthesiaScales < ActiveRecord::Migration[6.0]
  def change
    create_table :bathyesthesia_scales do |t|
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
