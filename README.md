# README


###Getting Started

- Clone the repository

  `$ git clone https://github.com/Richard-Scap/ol.git`

- Run bundle

  `$ bundle`

###Database Creation & Initialization *(note: we are using PostgreSQL)*

- Create development, test, and production databases
    ```
    mydb=# CREATE DATABASE ol_development
    mydb=# CREATE DATABASE ol_test
    mydb=# CREATE DATABASE ol_production
    ```

- Migrate db

  `$ rails db:migrate`

- Seed db

  `$ rails db:seed (this may take a few minutes)``

###Running the API

- Serve API on localhost:3000

  `$ rails start`

- To get the index, go to (localhost:3000/api/businesses) in your browser

- To get a particular business, go to localhost:3000/api/businesses/:id and replace ':id' with the id of the business you are looking for.

###Testing

  `$rails test`

Acknowledgements
----------------
- *progress_bar gem by Paul Sadauskas for seeding db*
    `gem 'progress_bar'`
- *Pagination gem by Mislav Marohnić for index end point*
    `gem 'will_paginate', '3.1.0'`
