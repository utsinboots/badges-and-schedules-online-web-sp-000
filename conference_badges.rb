# Write your code here.
#require 'pry'
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  names.collect {|name| badge_maker(name)}
end

def assign_rooms(speakers)
  room_badge = []
  speakers.each_with_index do |speaker, index|
    room_badge << "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"
  end
  room_badge
end

def printer(attendees)
  batch_badge_creator(attendees).each {|attendee| puts attendee}
  assign_rooms(attendees).each {|attendee| puts attendee}
end 