Option.destroy_all
Poll.destroy_all

# Seed data for Polls and Options
polls = [
  {
    title: "What's your favorite programming language?",
    description: "Let us know which programming language you enjoy the most!",
    options: [
      { text: "Ruby", votes_count: 0 },
      { text: "Python", votes_count: 0 },
      { text: "JavaScript", votes_count: 0 },
      { text: "Go", votes_count: 0 }
    ]
  },
  {
    title: "Which day is best for the team meeting?",
    description: "Help us pick the best day for our weekly team meeting.",
    options: [
      { text: "Monday", votes_count: 0 },
      { text: "Wednesday", votes_count: 0 },
      { text: "Friday", votes_count: 0 }
    ]
  },
  {
    title: "What should we have for lunch on Friday?",
    description: "Vote for your preferred lunch option for this Friday!",
    options: [
      { text: "Pizza", votes_count: 0 },
      { text: "Sushi", votes_count: 0 },
      { text: "Salad", votes_count: 0 },
      { text: "Sandwiches", votes_count: 0 }
    ]
  }
]

polls.each do |poll_data|
  poll = Poll.create(title: poll_data[:title], description: poll_data[:description])
  poll_data[:options].each do |option_data|
    Option.create(text: option_data[:text], votes_count: option_data[:votes_count], poll: poll)
  end
end
