# == Schema Information
#
# Table name: carts
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  shop_id    :bigint           not null, indexed
#  user_id    :bigint           not null, indexed
#
# Indexes
#
#  index_carts_on_shop_id  (shop_id)
#  index_carts_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (shop_id => shops.id)
#  fk_rails_...  (user_id => users.id)
#
class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :shop
  has_many :line_items, class_name: 'OrderItem'

  validates :user, uniqueness: { scope: :shop }
end
