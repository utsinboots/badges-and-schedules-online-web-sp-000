# Write your code here.
#require 'pry'
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  new_batch_badge = []
  names.each do |name| 
    new_batch_badge.push badge_maker(name)
  end
  new_batch_badge
end

def assign_rooms(speakers)
  room_badge = []
  speakers.each do |speaker|
    a = speakers.index("#{speaker}") + 1
    room_badge << "Hello, #{speaker}! You'll be assigned to room #{a}!"
  end
  room_badge
end

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