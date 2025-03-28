<a id="readme-top"></a>

<br />
<div align="center">
  <h3 align="center">RSS Aggregator Example</h3>

  <p align="center">
    Example project made entirely with Go!
  </p>
</div>

<!-- ABOUT THE PROJECT -->
## About The Project

This project tests the capabilites of the Go language by creating an HTTP server which allows you to:

* Create users
* Add RSS feed sources
* Subscribe and unsuscribe to them and download the RSS content
* Scrape the RSS content and save the Posts items in them

All the information is stored in a PostgreSQL database created using **DOCKER**, the required migrations where added using **GOOSE** and the sql queries where generated using **SQLC**.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started
### Prerequisites

First we need to add an *.env* file in the root folder with the selected *Port* (usually 8080) and the *DB_URL*.
Then, execute the following commands:
* execute
  ```sh
  go mod init
  go mod tidy
  go mod vendor
  docker compose up
  cd sql/schema
  goose postgres {DB_URL} up
  cd ../..
  sqlc generate
  go build && ./rssag
  ```
After that, the server should be running, and we will be able to execute requests through the localhost.

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
