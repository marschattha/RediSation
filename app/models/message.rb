class Message
  include RedisModel
  include ActiveModel::Conversion
  extend  ActiveModel::Naming
  include ActiveModel::Validations

  redis_attrs :id, :channel_id, :user_id, :message

  validates_presence_of :channel_id, :user_id, :message
end
