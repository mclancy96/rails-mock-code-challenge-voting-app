# Rails Code Challenge: Polling App

It's time to put our Rails know-how to the test. Our company is always looking for ways to gather feedback and make decisions, and now it's your turn to help build the platform for it! We are tasked with building a polling app for HQ.

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

Everyone is busy at HQ! But the new polling initiative is a BIG DEAL. The company wants to run regular polls to make decisions and gather opinions. Each poll can have many options to choose from. We need a way to keep track of polls and their options.

We have models for `Poll` and `Option`. Each poll has a `title` and a `description`, and has many options. Each option has `text` and a `votes_count` (the number of votes it has received), and belongs to a poll. Your job is to build out the associations and user interface for this polling system.

## Instructions / Deliverables

Read through the instructions to get a sense of the scope of this code challenge, and then tackle them one by one.

1. Create the associations between models. You will have to alter the current schema to get your code working. Once you've set up your relationships properly, you will be able to run `bin/rails db:seed` without errors, and confirm in a `bin/rails console` that the polls and options have been created with the proper relations.

2. On the polls index page, a poll's `title` should link to its show page.

3. The poll show page should include the poll's title, description, and all its options with their vote counts.

4. On the options index page, an option's `text` should link to its show page.

5. The option show page should display the option's text, vote count, and the poll it belongs to. The poll should link to the poll's show page.

6. One needs to be able to create a new poll in the app. A new poll requires a title, a description, and at least two options.

7. A poll must have a title and description, and each poll must have at least two options. Each option must have text and a votes_count (default 0).

## Submission

Do not push your changes up to Github. When you finish:

1. If you haven't already, create a custom branch with `git checkout -b custom_branch`.
2. `git add` and `git commit` your changes.
3. From your custom branch, run `git format-patch master --stdout > your_name.patch`, replacing `your_name` with your first and last name.
4. Send the patch file to your instructor on Connect before the specified time. Remember, you can use `open .` to launch a Finder window from your current directory, and then drag your file into Connect.
