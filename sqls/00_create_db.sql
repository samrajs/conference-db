\set appuserpasswd `echo $APPUSER_PASSWORD`

CREATE USER appuser WITH PASSWORD :appuserpasswd;
CREATE DATABASE conference_app;
GRANT ALL PRIVILEGES ON DATABASE conference_app TO appuser;