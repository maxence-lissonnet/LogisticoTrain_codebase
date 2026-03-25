# LogisticoTrain

**build images**
> docker compose build --pull

**build frontend**
> docker compose --profile build run --rm webapp

**lancer stack**
> docker compose up -d

**optionnel tools**
> docker compose --profile dev-tool up -d

##

> http://localhost:8080/

| type | lien | id | mdp |
|------|------|----|------|
| sql | http://localhost:8081/ | root | df85_Klo92_admin_sql |
| nosql | http://localhost:8082/ | admin | pass |