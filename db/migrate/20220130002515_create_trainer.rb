class CreateTrainer < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.string :name
      t.integer :age
      t.boolean :certified
    end
  end
end
