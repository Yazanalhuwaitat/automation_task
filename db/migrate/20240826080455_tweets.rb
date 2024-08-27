class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
