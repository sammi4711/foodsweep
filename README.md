# README

Welcome to FOODSWEEP!
Revolutionizing the way you shop!!

Grocery shopping is better as a team!

Say you and your friends are throwing a surprise birthday bash for another friend. You have a long list of supplies and gifts that you need to buy for this party that can be found at the grocery store or supermarket.

With FoodSweep, you and your friends can expedite the shopping process by having a list that updates in real time, so you can split up and keep track of what items have been grabbed, and which ones are still on the list!

---

This app was created with Rails version 5.2.3 and Ruby version 2.6.3.
Hosted at HEROKU.
Run tests with command \$ rspec spec.

Previous experience with the Rails framework includes:

### BLOCCIT

- A Reddit replica to teach the fundamentals of web development and Rails. A guided project created at Bloc.

### BLOCIPEDIA

- An application that allows users to create public and private Markdown-based wikis. A very lightly-guided project created at Bloc (user stories provided only; all code freely written).

### AUDITIONFISH

- An application that allows actors and directors to come together and produce an easier way for actors to find auditions for non-union theatre productions in their area. Directors post notices and alleviate the need for actors to go searching through Facebook events to find shows to audition for. A completely freeform project created as a capstone for Bloc.

---

# THE PROBLEM PRESENTED:

Create a grocery list web-application that can be shared in real-time by multiple people.

Imagine you have a 4-person family and a large grocery list. Each member of the family independently owns their own mobile device. How can you most effectively get the shopping done in a timely fashion?

# THE SOLUTION:

When you arrive at the grocery store, you split up to shop individually. Every member of the family has the app running on their smart phone. This allows groceries to be acquired in the fastest possible way. Each person has the same grocery list on their phone. When one of you checks a grocery item off the shared list, it updates on everyone else’s list, preventing anyone from purchasing duplicate items. Similarly, items added to the list on any phone update to the same list.

---

I chose Ruby on Rails because that is what I have spent the last few months working in and it is the framework that makes the most sense to me technically. So far, Ruby is the language that I most enjoy coding in.

For user authentication I specifically decided against using the Devise gem. It was used in one of my previous projects and ended up being full of outdated information and riddled with bugs and issues and took an entire day to debug even with the help of one of the most talented Ruby developers on the Bloc technical coach team. Since I am not familiar with any other 'shortcut' method of user authentication, I decided to just code it from scratch, since this is a process I am familiar with from other previous projects and I did not want to risk taking too much time working with a new gem that I was completely unfamiliar with.

A trade off I made was spending more time on getting the add item capability looking the way I wanted it, rather than spending time on extra features or doing much with the website design/styling. I did not want this project to essentially look the same as all my other projects, with the grocery lists mimicking the posts of Bloccit, the wikis of Blocipedia, and the audition notices of AuditionFish. On top of that I was very determined to make this project work without having to create and associate separate tables for the lists and the items on them. I wanted (and succeeded) for everything to be done only using one table to contain all the contents of the lists. I ended up having to delve really deep into unfamiliar territory to make this work, but once I was invested, there was no going back.

If I'd had more time, I would have spent much more time experimenting with styling, as I don't want this project to look so much like my others. I also would have added email authentication during user sign up, and written more tests.

At the moment, all users can edit all lists.
Obviously, we need better security than that, as we can not trust users to not mess with lists that are not theirs. And if the user database became quite large, there would be an overload of lists on the list Index page, and users would have trouble finding their individual lists.

The next thing I would like to associate the lists and the users, and implement the ability for a grocery list to be private to a single user, who may then share viewing and editing capabilities with other users (basically, collaborators).

A trello board with more details for future implementations can be found here:
https://trello.com/b/3QxWTouP/certification-project
