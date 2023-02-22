# == Schema Information
#
# Table name: shops
#
#  id         :bigint           not null, primary key
#  shop_name  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null, indexed
#
# Indexes
#
#  index_shops_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :shop do
    association :user, factory: :user

    shop_name { Faker::Company.name }
  end
end
