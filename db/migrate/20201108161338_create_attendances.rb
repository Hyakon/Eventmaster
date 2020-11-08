class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.string :stripe_customer_id

      t.belongs_to :event
      t.references :user
      t.timestamps
    end
  end
end
