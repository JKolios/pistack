CREATE USER readflow;
ALTER USER readflow WITH PASSWORD 'readflow';
CREATE DATABASE readflow;
GRANT ALL PRIVILEGES ON DATABASE readflow TO readflow;