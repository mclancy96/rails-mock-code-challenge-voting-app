
# Rails Mock Code Challenge: Voting App

Test your Rails skills by building a simple voting platform! In this scenario, your company is running a series of polls to gather feedback and opinions from employees. Each poll has multiple options, and users can cast their votes for their preferred option.

## Objectives

- MVC
- REST
- Request/Response Cycle
- Form/Form Helpers
- ActiveRecord
- Validations

## Setup

Before you begin, fork and clone this repo, run `bundle install` and `bin/rails db:migrate` to get started.

## The Domain

The company wants to run regular polls to make decisions and gather opinions. Each poll can have many options to choose from, and employees can vote for one option per poll. We need a way to keep track of polls, their options, and the votes cast by users.

You have models for `Poll`, `Option`, and `Vote`. Each poll has a `title` and a `description`, and has many options. Each option has `text` and a `votes_count` (the number of votes it has received), and belongs to a poll. Each vote belongs to an option and a poll. Your job is to build out the associations and user interface for this voting system.

## Instructions / Deliverables

Read through the instructions to get a sense of the scope of this code challenge, and then tackle them one by one.

1. Create the associations between models. You may need to alter the schema to get your code working. Once set up, you should be able to run `bin/rails db:seed` without errors, and confirm in a `bin/rails console` that polls, options, and votes have the correct relationships.

2. On the polls index page, a poll's `title` should link to its show page.

3. The poll show page should display the poll's title, all its options, and the number of votes each option has received. Each option should have a button or link to cast a vote.

4. There should be a page to create a new poll, including adding options to the poll.

5. A user should only be able to vote once per poll (enforce this in the model or controller).

6. Add validations: a poll must have a title, and each poll must have at least two options.

## Submission

Do not push your changes up to Github. When you finish:

1. If you haven't already, create a custom branch with `git checkout -b custom_branch`.
1. `git add` and `git commit` your changes.
1. From you custom branch, run `git format-patch master --stdout > your_name.patch`, replacing `your_name` with your first and last name.
1. Send the patch file to your instructor on Connect before the specified time. Remember, you can use `open .` to launch a Finder window from your current directory, and then drag your file into Connect.
