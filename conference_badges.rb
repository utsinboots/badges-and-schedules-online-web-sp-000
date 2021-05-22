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
=begin
def printer(attendees)
  number = attendees.size
  count = 0
  loop do
    puts batch_badge_creator(attendees)[count]
    puts assign_rooms(attendees)[count]
    count += 1
    #binding.pry
    break if count == number
  end
end
=end