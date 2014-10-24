class CreateWorkOrders < ActiveRecord::Migration
  def change
    create_table :work_orders do |t|
      t.integer :user_id
      t.integer :company_id
      t.text :notes
      t.datetime :expected_completion_date
      t.integer :status
      t.boolean :is_rush
      t.integer :serviced_item_id
      t.string :description
      t.boolean :send_text_notification
      t.boolean :send_email_notification
      t.boolean :send_call_notification

      t.timestamps
    end
  end
end
