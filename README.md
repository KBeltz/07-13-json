#API Project

Build a data service API for your school work thus far.

1. Set up a CRUD application for your work.

*Specs

**Should let you add assignments you've worked on, storing information such as the assignment description and GitHub link (among other things)
**Should let you associate links to articles and videos with assignments
**Should let you indicate if you worked on a project with others (and, if so, whom)

*You'll need multiple resources (a.k.a. "models") for this, since there are some one-to-many relationships inherent in the application.
*Get the CRUD application done as quickly as possible. No CSS. This is for your own admin purposes only.

2. Add a JSON API (Part 1)
*Create a new controller called "api_controller.rb".
*To have an action return JSON, check http://www.sinatrarb.com/contrib/json.html
*Set up two actions:
** `get "/api/assignments"` - returns all assignments
** `get "/api/assignments/:id"` - returns only information about the assignment with the given ID, but includes everything about it (including links to articles/videos and information about group members)
*Your partner should be able to access your assignments' information using HTTParty.
**You'll need to add set :bind, '0.0.0.0' to your project (anywhere after require "sinatra") so that your partner can access your website using your computer's IP address.
**Do you need to use 0.0.0.0 or your actual IP address? Good question. tias

3. Add a JSON API (Part 2)
*Add actions to the API for the following remaining CRUD operations:
**Get all links to articles/videos (This might be two actions, if you chose to make separate resources for articles and videos.)
**Get all classmates you've worked with
**Get all assignments you worked on with a given classmate (This will look similar to the "returns all assignments" action from above – except it will only have assignments you worked on with [for example] classmate 5.)
**Add an assignment
***Start simple! Build an action that creates an assignment with a given description and GitHub link. Worry about adding associated information later (or not at all).
**Add a new link (article/video) to an existing assignment
**Add a group member to an existing assignment
**Remove a group member from an existing assignment
**Remove a link from an existing assignment
**Remove an assignment

4. Document your API
*Build a good README.md that describes all of the API actions possible and how to use them.

5. If your partner has trouble figuring out how to use your API (without you instructing them), your README probably needs work.
