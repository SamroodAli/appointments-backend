# Code Zilla Appointments

Codezilla is a course catalogue website which presents a list of coding courses. You can watch them as well. Skill up with these courses for free. This is the companion app which lets you book appointments with the teachers at Codezilla.

## Live Demo

[heroku link](https://codezilla-appointments.herokuapp.com/)

# Codezilla Companion App

This is the companion app for codezilla which can be found here

- Repo [Codezilla](https://github.com/SamroodAli/codezilla)
- Live on [heroku](https://samrood-codezilla.herokuapp.com/)

## Built With

- Ruby on
- Knock JWT authentication gem

# React Frontend Codebase

The front lives in this [repo](https://github.com/SamroodAli/appointments-frontend)

# Features

- Ruby on rails API server.
- no cors turned on for security since rails serve react frontend static files.
- JWT tokens authentication with http only session cookies
- Resources skaffolded out using Rails cli

## Getting Started

To get a local copy up and running follow these simple example steps.

- A browser
- Node js ([install node](https://nodejs.org/en/download/))

### Setup

To get started with the app, first clone the repo and `cd` into the directory:

```
$ git clone https://github.com/SamroodAli/appointments-backend.git
$ cd appointments-backend
```

Then install the needed packages (while skipping any Ruby gems needed only in production):

```
$ bundle install
```

Next, setup webpacker configuration

```
$ rails webpacker:install
```

After that, create and migrate the database:

```
$ rails db:create
$ rails db:migrate
```

To run the project on rails local server:

```
$ rails server
```

## Deploying

you’ll need a Heroku account

To deploy this version of the app, you’ll need to create a new Heroku application, switch to the right branch, push up the source, run the migrations, and seed the database with sample users:

```
$ heroku create
$ git checkout updating-users
$ git push heroku updating-users:master
$ heroku run rails db:migrate
$ heroku run rails db:seed
```

## Branches

Simply check out the corresponding branch using `git checkout`:

```
$ git checkout <branch name>
```

## Author

![Samrood Ali's GitHub stats](https://github-readme-stats.vercel.app/api?username=SamroodAli&count_private=true&theme=dark&show_icons=true)

👤 **Samrood Ali**

- GitHub: [@githubhandle](https://github.com/SamroodAli)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/samrood-ali/)

# Attributions

asmyshlyaev177/react-horizontal-scroll
hero home section - Armando99Rdz - https://tailwindcomponents.com/u/armando99rdz

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/SamroodAli/codezilla/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](./LICENSE) licensed.
