# frozen_string_literal: true

FactoryBot.define do
  factory :room do
    name { 'MyString' }
    description { 'MyString' }
    type { '' }
    num_guests { 'MyString' }
    beds_single { 'MyString' }
    beds_double { 'MyString' }
  end
end
