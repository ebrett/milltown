class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  connects_to shards: {
    default: { writing: :shard_1, reading: :shard_1 },
    shard_1: { writing: :shard_1, reading: :shard_1 },
    shard_2: { writing: :shard_2, reading: :shard_2 }
  }
end
