# User Manual - Student Information System (SIS)

## 1. Introduction
The Student Information System (SIS) is a command-line application designed to manage student records. It runs inside a Docker container and persists data to a PostgreSQL database.

## 2. Prerequisites
Before running the system, ensure you have:
* **Docker Engine** installed and running.
* **Git** installed.

## 3. How to Run the System
1.  **Clone the Repository:**
    ```bash
    git clone [https://github.com/erfnkrm/cpp-finalproject-ERS.git](https://github.com/erfnkrm/cpp-finalproject-ERS.git)
    cd cpp-finalproject-ERS
    ```

2.  **Start the Application:**
    Run the following command in the root directory:
    ```bash
    docker-compose up --build
    ```

3.  **Verify Connection:**
    Check the terminal logs. You should see:
    * `database system is ready to accept connections`
    * `Connected to database: ers_db`

## 4. Troubleshooting
### Database Connection Failed
If the application says "Can't open database":
1.  Ensure the database container is running: `docker ps`
2.  Check if the password in `main.cpp` matches `docker-compose.yml`.
3.  Ensure you are using `host=db` in the connection string, not `localhost`.

### Build Errors
If `CMakeLists.txt` is not found:
* Ensure the file exists in the root directory (not inside `src` or `docs`).