# By using the symbol ':announcement', we get Factory Girl to simulate the announcement model.
Factory.define :announcement do |a|
  a.sequence(:what) { |n| "Event#{n}" }
  a.when Time.now
  a.sequence(:where) { |n| "Location#{n}" }
  a.details "These are the details for the event"
  a.published true
end

