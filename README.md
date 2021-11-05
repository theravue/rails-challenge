# README

## Pre-requisites

The following need to be installed in local dev environment
- MySQL
- Ruby 2.7.4

## Getting the app running

1. Clone the repo
2. Create a database.yml (can use database.yml.example as a template), and configure it to connect to your local MySQL instance.
3. bundle
4. rails db:setup # to create db, load schema, and initialize with some seed data
5. rails s

## Background
We have a simple course management platform where teachers can browse courses. Teachers can view a course's lessons and assignments by clicking on a particular course.

Teachers now want to be able to copy courses. Unfortunately, some courses are very large and could take a long time to copy.

## Your Challenge
We've added a Copy Course button to the course page, but it doesn't currently do anything.

Implement this Copy Course functionality for teachers, and also ensure that teachers are not left waiting while this potentially long operation is in progress. Teachers should somehow know when a copy operation is in progress and when it has completed.

One simple way to provide feedback to the user while the copy operation is in progress would be to display the following on the Course index page.

In Progress:
![in-progress](https://user-images.githubusercontent.com/112626/140476958-34e59883-6e12-4f88-b210-08718017eee7.png)

Finished:
![done](https://user-images.githubusercontent.com/112626/140477032-e14f6410-542d-438f-a06e-431442ea00af.png)

If you want to look at other UX patterns as well for inspiration, see [this link](https://pencilandpaper.io/articles/user-experience/ux-pattern-analysis-loading-feedback/).

## Requirements

- On frontend, only use vanilla Javascript or jQuery. Don't use any other third party frameworks, libraries, or external JS resources.
- Use a background job to handle the copy operation, e.g. using a gem like `delayed_job`

## Things to consider

- We are not evaluating aesthetics, so don't try to make the front-end look too good.
- Tests are optional for this challenge. Use them if you find it helpful to your design, but we will not deduct any points if you skip tests!
- We're mainly looking at how you structure and design code, both in Ruby and in vanilla Javascript/jQuery.

## How to submit your solution

- Don't fork this repository on Github, as that would make your solution public for others to see. Instead, just clone the repository and work locally on it.
- When you're done, create a private GitHub repository, and push your work to it.
- Invite @radman to your private repo
- Let us know you've completed the exercise.
