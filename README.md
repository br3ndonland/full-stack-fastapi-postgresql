# Full Stack FastAPI and PostgreSQL - Base Project Generator

[![Build Status](https://travis-ci.com/br3ndonland/full-stack-fastapi-postgresql.svg?branch=develop)](https://travis-ci.com/br3ndonland/full-stack-fastapi-postgresql)

Generate a backend and frontend stack using Python, including interactive API documentation.

## Table of Contents <!-- omit in toc -->

- [Features](#features)
  - [Interactive API documentation](#interactive-api-documentation)
  - [Alternative API documentation](#alternative-api-documentation)
  - [Dashboard Login](#dashboard-login)
  - [Dashboard - Create User](#dashboard---create-user)
- [How to use it](#how-to-use-it)
- [More details](#more-details)
- [Sibling project generators](#sibling-project-generators)
- [License](#license)

## Features

- Full **Docker** integration (Docker based).
- Docker Swarm Mode deployment.
- **Docker Compose** integration and optimization for local development
- **Production ready** Python web server using Uvicorn and Gunicorn.
- Python **[FastAPI](https://github.com/tiangolo/fastapi)** backend:
  - **Fast**: Very high performance, on par with **NodeJS** and **Go** (thanks to Starlette and Pydantic).
  - **Intuitive**: Great editor support. <abbr title="also known as auto-complete, autocompletion, IntelliSense">Completion</abbr> everywhere. Less time debugging.
  - **Easy**: Designed to be easy to use and learn. Less time reading docs.
  - **Short**: Minimize code duplication. Multiple features from each parameter declaration.
  - **Robust**: Get production-ready code. With automatic interactive documentation.
  - **Standards-based**: Based on (and fully compatible with) the open standards for APIs: <a href="https://github.com/OAI/OpenAPI-Specification" target="_blank">OpenAPI</a> and <a href="http://json-schema.org/" target="_blank">JSON Schema</a>.
  - **Many other features** including automatic validation, serialization, interactive documentation, authentication with OAuth2 JWT tokens, etc.
- **Secure password** hashing by default.
- **JWT token** authentication.
- **SQLAlchemy** models (independent of Flask extensions, so they can be used with Celery workers directly).
- Basic starting models for users (modify and remove as you need).
- **Alembic** migrations.
- **CORS** (Cross Origin Resource Sharing).
- **Celery** worker that can import and use models and code from the rest of the backend selectively (you don't have to install the complete app in each worker).
- REST backend tests based on **Pytest**, integrated with Docker, so you can test the full API interaction, independent on the database. As it runs in Docker, it can build a new data store from scratch each time (so you can use ElasticSearch, MongoDB, CouchDB, or whatever you want, and just test that the API works).
- Easy Python integration with **Jupyter Kernels** for remote or in-Docker development with extensions like Atom Hydrogen or Visual Studio Code Jupyter.
- **Vue** frontend:
  - Generated with Vue CLI.
  - **JWT Authentication** handling.
  - Login view.
  - After login, main dashboard view.
  - Main dashboard with user creation and edition.
  - Self user edition.
  - **Vuex**.
  - **Vue-router**.
  - **Vuetify** for beautiful material design components.
  - **TypeScript**.
  - Docker server based on **Nginx** (configured to play nicely with Vue-router).
  - Docker multi-stage building, so you don't need to save or commit compiled code.
  - Frontend tests ran at build time (can be disabled too).
  - Made as modular as possible, so it works out of the box, but you can re-generate with Vue CLI or create it as you need, and re-use what you want.
- **PGAdmin** for PostgreSQL database, you can modify it to use PHPMyAdmin and MySQL easily.
- **Flower** for Celery jobs monitoring.
- Load balancing between frontend and backend with **Traefik**, so you can have both under the same domain, separated by path, but served by different containers.
- Traefik integration, including automatic generation of Let's Encrypt **HTTPS** certificates.
- GitLab **CI** (continuous integration), including frontend and backend testing.

### Interactive API documentation

[![API docs](img/docs.png)](https://github.com/tiangolo/full-stack-fastapi-postgresql)

### Alternative API documentation

[![API docs](img/redoc.png)](https://github.com/tiangolo/full-stack-fastapi-postgresql)

### Dashboard Login

[![API docs](img/login.png)](https://github.com/tiangolo/full-stack-fastapi-postgresql)

### Dashboard - Create User

[![API docs](img/dashboard.png)](https://github.com/tiangolo/full-stack-fastapi-postgresql)

## How to use it

Install [Cookiecutter](https://cookiecutter.readthedocs.io/en/latest/) on your system with a package manager, such as [Homebrew](https://brew.sh/) or [pipx](https://pipxproject.github.io/pipx/).

```bash
brew install cookiecutter
```

Go to the directory where you want to create your project and run Cookiecutter:

```bash
cd dev
cookiecutter https://github.com/br3ndonland/full-stack-fastapi-postgresql
```

## More details

After using this generator, your new project (the directory created) will contain an extensive `README.md` with instructions for development, deployment, etc. You can pre-read [the project `README.md` template here too](./{{cookiecutter.project_slug}}/README.md).

## Sibling project generators

- Forked from [tiangolo/full-stack-fastapi-postgresql](https://github.com/tiangolo/full-stack-fastapi-postgresql)
- Based on [tiangolo/full-stack-fastapi-couchbase](https://github.com/tiangolo/full-stack-fastapi-couchbase).

## License

This project is licensed under the terms of the [MIT license](https://choosealicense.com/licenses/mit/).
