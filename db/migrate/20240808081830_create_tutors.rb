class CreateTutors < ActiveRecord::Migration[7.2]
  def change
    create_table :tutors do |t|
      t.string :name
      t.string :email
      t.text :tech_stack
      t.string :location
      t.string :image_url

      t.timestamps
    end
  end
end
