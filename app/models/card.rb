class Card
  include Mongoid::Document
  include Mongoid::Timestamps

  field :term, type: String, default: ""
  field :definition, type: String, default: ""
  field :translation, type: String, default: ""

  validates :term, presence: true
  validates :translation, presence: true
end
