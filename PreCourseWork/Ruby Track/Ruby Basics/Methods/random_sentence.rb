def name(names)
  names.sample
end

def activity(activities)
  # Loooove this method (:)
  activities.sample
end

def get_sentence(name, activity)
  "#{name} did #{activity} today!"
end

# Test
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts get_sentence(name(names), activity(activities))