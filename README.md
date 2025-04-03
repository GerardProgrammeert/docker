# PHP Development Environment with Docker
This repository provides a simple and efficient development environment for PHP, preconfigured with popular extensions. It leverages Docker and Docker Compose to streamline the setup and development process.
Currently, this setup has been tested with Laravel 11. 

The project includes make commands that simplify interaction with Docker containers, making it easy to build the project, log into containers, and perform other common tasks.

## Environment

    - Base OS: This project uses Debian-based Docker images (specifically php:8.2-fpm and nginx:latest), which are derived from official Debian distributions.
    - PHP Version: PHP 8.2
    - Web Server: NGINX
    - Database: MySQL 5.7
    - Package Manager: apt-get (Debian/Ubuntu-based)
    - NGINX as the web server
    - Mailpit for local email testing
    - Composer for dependency management

## Installed PHP Extensions

    1. GD (for image processing)
    2. PDO (for database interaction)
    3. PDO MySQL (for MySQL database support)
    4. ZIP (for handling zip files)

These extensions are installed in the PHP container by default to support various PHP-based applications

## Installed System Packages

    - libfreetype6-dev: Required for GD with FreeType support
    - libjpeg62-turbo-dev: Required for GD with JPEG support
    - libpng-dev: Required for GD with PNG support
    - libzip-dev: Required for ZIP support
    - zip: For creating and extracting zip archives
    - unzip: For extracting zip archives
    - nano: A simple text editor for editing files inside the container
    - default-mysql-client: MySQL client for interacting with MySQL databases

## Usage

1. Clone the repository:

```bash
  git clone git@github.com:GerardProgrammeert/docker.git
  cd docker
```

2. Build and start the containers:

```bash
    make up
```
3. Log in the php-fpm container as php user 
```bash
    make in
```