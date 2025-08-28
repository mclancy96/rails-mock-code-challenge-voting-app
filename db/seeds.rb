
Poll.destroy_all
Option.destroy_all
Vote.destroy_all

polls = [
  { title: "What's your favorite programming language?" },
  { title: "Which day is best for the team meeting?" }
]

polls.each do |poll_attributes|
  poll = Poll.create(poll_attributes)
  case poll.title
  when "What's your favorite programming language?"
    ["Ruby", "Python", "JavaScript", "Go"].each do |option_text|
      Option.create(text: option_text, poll_id: poll.id)
    end
  when "Which day is best for the team meeting?"
    ["Monday", "Wednesday", "Friday"].each do |option_text|
      Option.create(text: option_text, poll_id: poll.id)
    end
  end
end
