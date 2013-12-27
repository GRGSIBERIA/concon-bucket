#-*- encoding: utf-8

account = []
open('./dynamo.conf').each {|x| account << x}.close

dynamo_db = AWS::DynamoDB.new(
  :access_key_id => account[0],
  :secret_access_key => account[1])
