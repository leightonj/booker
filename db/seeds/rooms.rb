# frozen_string_literal: true

# reload!; load('db/seeds/rooms.rb')
(1..10).each do |n|
  room = Room.find_or_initialize_by(name: "Room_#{n}")
  room.update(description: 'description', type: 'Single', num_guests: 1, beds_single: 1)
end
