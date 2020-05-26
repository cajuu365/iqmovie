# TMDb Client Application

I created a simple app that will allow me to watch TMDb movies.

![IQmovie](https://repository-images.githubusercontent.com/267084106/342c4680-9f48-11ea-82ae-f7540d1b4f7a)

## Tasks

Build​ ​a​ ​basic​ ​application​ ​that​ ​parses​ the movies from [The Movie Database (TMDb)](https://www.themoviedb.org/),​ ​stores​ ​results​ ​in​ ​a structured​ ​manner​ ​in​ ​a​ ​persistent​ ​layer​ ​and​ ​allows​ ​to​ ​perform​ ​search​ ​on​ ​stored​ ​results.

### API Service
Create​ ​a​ ​REST ​API​ using Ruby on Rails ​containing​ ​3 ​endpoints:

* `GET /movies`
Get all the movies that were previously added: this endpoint must allow searches using query string params, e.g. `http://localhost:3000/movies?name=Godfather`.

* `POST /movies`
Create a movie with the data provided by the client. You will find the information about the frontend client below.

* `GET /movies/search`
Search movies by name: This endpoint must use the [API](https://developers.themoviedb.org/3/search/search-movies) provided by TMDb to search for movies depending on certain criteria sent by the client.

The​ ​service​ ​should​ ​parse​ ​the​ ​following​ ​fields​ ​from​ The Movie Database​ ​API:
* Title ​of​ ​the​ movie
* Movie overview
* Vote count
* Poster path
* Release date

### Frontend Client

Create a React or Vue application that uses the above service. The UI should allow users to:
* Submit searches to the TMDb API through the  `GET /movies/search` endpoint, store the response data and display it in a more visual way using the poster path to show a picture of the movie.
* Create a new movie with the information stored in the task described above using the `POST /movies` action.
* Search for movies that were previously created using the `GET /movies` endpoint, searching by either the name or the description of the movie.
* (Bonus) Allow searching by release date using different date ranges, e.g. tomorrow, next week, this month, next month.


## Solution API Service

### GET /movies/search

My solution was to create a controller called "movies" that would allow me to identify how a CRUD is performed in Rails. After using the HTTP verbs, I learned how to handle the routes.rb file, install a gem, in this case "Devise" that would allow me to handle the authentication of users and their views.

Understanding how Rails works, I started the development of the activity developing the search engine that would allow me to query results in the database.

To know if I was looking for results, I decided to add data through "/movies/new" and as an extension, add two buttons, one to delete "/movies/: id / delete" and the other to update "/movies/: id/ update ".

As I did?
I generated a controller called "movies" to manage all the HTTP verbs, so I can add a movie and show it.

To "search/query" my database, develop another controller called "search"

Generating a search using query string parameters.

Result:
* `GET /search/create?name=Iron%20Man`

### POST /movies

Finally I couldn't develop it due to general context issues.

### GET /movies/search

I built a controller called "movie shows" that allows me to query the TMDb API data with the "HTTParty" gem.

Result:
* `GET /moviehows/search?query=Iron+Man`


## Solution Frontend Client

To show the results I decided to use Coffeescript together with Tailwindcss.

Do not develop it in React or Vue for lack of context.

Here is a [DEMO](https://www.loom.com/share/1f93f56c3b8e4983a0a0aa99f1a3636d) 


## Installation

In your terminal:

* `$ git clone https://github.com/cajuu365/iqmovie` to clone the project on your local system

* `$ cd iqmovie` to navigate into the repository

* `$ bundle install` to install necessary dependencies. (note any errors if you need to download/update any global dependencies)

* `$ rails s` to start the server (should be localhost:3000 but see terminal response to be sure)

* navigate to `localhost:3000` in your browser

* yay! you should be running the app locally on your system : )

* Press `CTRL + C` in your terminal to stop the server
