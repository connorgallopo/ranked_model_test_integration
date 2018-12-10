class BacklogItem < ApplicationRecord

  include RankedModel

  ranks :row_order

  belongs_to :sprint

  # ranks :sprint_order_position,
  #    :with_same => :sprint_id

end
