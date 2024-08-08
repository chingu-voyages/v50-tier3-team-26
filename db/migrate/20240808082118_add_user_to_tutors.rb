class AddUserToTutors < ActiveRecord::Migration[7.2]
  def change
    add_reference :tutors, :user, null: false, foreign_key: true
  end
end
