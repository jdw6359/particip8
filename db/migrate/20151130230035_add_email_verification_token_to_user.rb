class AddEmailVerificationTokenToUser < ActiveRecord::Migration
  def change
  	add_column :users, :email_verification_token, :string
  end
end
