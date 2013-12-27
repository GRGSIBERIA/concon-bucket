#-*- encoding: utf-8
require './models/model_base.rb'

class User < ModelBase

  def initialize
    super(:user_id,
      [
        :user_name,
        :twitter_id,
        :home_page,
        :password,
        :joined_on,
        :mail_address,
        :profile
      ])
  end
  
end