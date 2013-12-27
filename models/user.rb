#-*- encoding: utf-8
require './models/model_base.rb'

class User < ModelBase
  @attributes = [
        :user_id,
        :user_name,
        :twitter_id,
        :home_page,
        :password,
        :joined_on,
        :mail_address,
        :profile
      ]

  def initialize
    super(@attributes)
  end
  
  def initialize(item_hash)
    super(@attributes, item_hash)
  end
end