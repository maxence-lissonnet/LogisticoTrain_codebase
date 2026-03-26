# BASE SERVER CONFIGURATION
# General
# use 0.0.0.0:5000 for a docker deployment
SERVER_HOST = '0.0.0.0'
SERVER_PORT = 5001
DEBUG = False
# CORS Configuration
ENABLE_CORS = True  # Enable CORS compliancy only if the front app is served by another server (mostly in dev. conf)

# SQL PRODUCTION DB CONNECTION CONFIGURATION
SQLDB_SETTINGS = {
    "db": 'logistico_train',  # mandatory
    "user": 'root',  # mandatory
    "password": 'df85_Klo92_admin_sql',  # mandatory
    "host": 'sqldatabase',  # default localhost
    "port": 3306  # default 3306
}

# MONGODB HISOTRY DB CONNECTION CONFIGURATION
MONGODB_SETTINGS = {
    "db": "history-db",  # Mandatory
    "host": "nosqldatabase",  # default localhost
    "port": 27017,  # default 27017
    "username": "admin",  # Optional
    "password": "admin123",  # Optional
    "authentication_source": "admin"  # default is the db
}
