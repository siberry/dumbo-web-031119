class User < ActiveRecord::Base
  # without any other code User.new will return #<User:0x00007fb0fe3abb30 id: nil, name: nil, created_at: nil, updated_at: nil>
  # User.new({name:"Graham", created_at: DateTime.new })


end
