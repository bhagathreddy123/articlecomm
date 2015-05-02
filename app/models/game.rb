class Game < ActiveRecord::Base
	 extend FriendlyId
   
 friendly_id :slug_candidates, :use => [:slugged, :history]

  def slug_candidates
    [
      :name,
      [:name, :description]
    ]
  end
end





