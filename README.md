# Godown Inventory

This is a simple inventory built with Node.js & Express.js (for backend) and Nex.js (for frontend). The project can be easily set up and run using Docker Compose.

## Prerequisites

Before you begin, ensure you have the following installed on your machine:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Getting Started

Follow these steps to get the project up and running:

1. **Clone the repository:**

    ```bash
    git clone https://github.com/your-username/your-repo-name.git
    cd your-repo-name
    ```

2. **Set up environment variables:**

    Create `backend/.env` and add the following environment variables:
    
    ```bash
    DATABASE_URL="postgresql://postgres:interiit-postgres@localhost:5432/warehouse" # Keep it as it is
    CLIENT_ID="xxxxxxxxxxxx-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.apps.googleusercontent.com"
    CLIENT_SECRET="XXXXXX-xxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    REDIRECT_URI="http://localhost:8000/auth/google/callback"
    JWT_SECRET="jwtsecret"
    CLIENT_URL="http://localhost:3000"
    ```

    Create `frontend/.env` and add the following environment variables:

    ```bash
    NEXT_PUBLIC_BACKEND_URL="http://localhost:8000"
    ```

3. **Run the application:**

    Use Docker Compose to build and start the containers. You can use either of the following commands:

    ```bash
    sudo docker-compose up -d
    ```

    or

    ```bash
    sudo docker compose up -d
    ```

    The `-d` flag runs the containers in detached mode.

4. **Access the application:**

   Now open `http://localhost:3000` to access the application.

## Stopping the Application

To stop the running containers, use:

```bash
sudo docker-compose down
```

or

```bash
sudo docker compose down
```

This will stop and remove the containers defined in the `docker-compose.yml` file.

## Other Commands

- **View logs:**

    ```bash
    docker-compose logs
    ```

    or

    ```bash
    docker compose logs
    ```

- **Rebuild containers:**

    If you make changes to the Dockerfile or the `docker-compose.yml`, you might need to rebuild the containers:

    ```bash
    docker-compose up -d --build
    ```

    or

    ```bash
    docker compose up -d --build
    ```
