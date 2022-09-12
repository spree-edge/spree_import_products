class CreateImportLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :spree_import_logs do |t|
      t.string :started_by_email
      t.integer :store_id
      t.string :state
      t.integer :success_row_count
      t.integer :error_row_count
      t.json :error_details, default: {}

      t.timestamps
    end
  end
end
