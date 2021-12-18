# frozen_string_literal: true

class Room
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :description, type: String
  field :type, type: String
  field :num_guests, type: String, default: 0
  field :beds_single, type: String, default: 0
  field :beds_double, type: String, default: 0
end
