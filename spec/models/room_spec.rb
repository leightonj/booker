# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Room, type: :model do
  it 'has a valid factory' do
    expect(build(:room)).to be_valid
  end
end
