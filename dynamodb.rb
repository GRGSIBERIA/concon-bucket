#-*- encoding: utf-8
require 'aws-sdk'

class DynamoDB
  def initialize
    account = []
    open('./dynamo.conf').each {|x| account << x}.close

    @db = AWS::DynamoDB.new(
      :access_key_id => account[0],
      :secret_access_key => account[1])
    puts "Successfully connect to DynamoDB: #{@db}"
  end

  def db
    @db
  end
end