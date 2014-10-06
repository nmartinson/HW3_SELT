class CreateUsers < ActiveRecord::Migration
  def up
    create_table 'users' do |t|
      t.string 'email'
      t.string 'user_id'
      t.string 'session_token'
      t.datetime 'timestamps'

      t.timestamps
    end
  end

  def down
     drop_table 'users'
  end
end