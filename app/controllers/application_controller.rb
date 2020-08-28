class ApplicationController < ActionController::Base
  # around_action :wrap_database_connection


  private

  def wrap_database_connection
    ActiveRecord::Base.connected_to(shard: :shard_1) do
      yield
    end
  end
end
