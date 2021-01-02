class RemoveReferencesFromTrips < ActiveRecord::Migration[6.0]
  def change
    remove_reference :blogs, :topic, index: true, foreign_key: true
  end
end
