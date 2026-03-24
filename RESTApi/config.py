import os

SERVER_HOST = os.getenv("SERVER_HOST", "0.0.0.0")
SERVER_PORT = int(os.getenv("SERVER_PORT", 5001))

# MYSQL
MYSQL_HOST = os.getenv("MYSQL_HOST", "sqldatabase")
MYSQL_PORT = int(os.getenv("MYSQL_PORT", 3306))
MYSQL_USER = os.getenv("MYSQL_USER", "root")
MYSQL_PASSWORD = os.getenv("MYSQL_PASSWORD", "")
MYSQL_DB = os.getenv("MYSQL_DB", "logistico")

# MONGO
MONGO_HOST = os.getenv("MONGO_HOST", "nosqldatabase")
MONGO_PORT = int(os.getenv("MONGO_PORT", 27017))
MONGO_DB = os.getenv("MONGO_DB", "logistico")

DEBUG = os.getenv("DEBUG", "False") == "True"