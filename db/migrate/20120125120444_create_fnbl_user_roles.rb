class CreateFnblUserRoles < ActiveRecord::Migration
  def change
    create_table :fnbl_user_roles do |t|

      t.timestamps
    end
  end
end
