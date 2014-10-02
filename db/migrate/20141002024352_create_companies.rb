class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :service_item
      t.boolean :is_paid

      t.timestamps
    end
  end
end
