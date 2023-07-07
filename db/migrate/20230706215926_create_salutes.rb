# class CreateSalutes < ActiveRecord::Migration[7.0]
class CreateSalutes < ActiveRecord::Migration[7.0]
  def change
    create_table :salutes do |t|
      t.string :message

      t.timestamps
    end
  end
end
