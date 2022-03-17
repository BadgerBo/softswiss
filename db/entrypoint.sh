#!/bin/bash

bash liquibase --url="jdbc:postgresql://db:5432/$POSTGRES_DB"  --username=$POSTGRES_USER --password=$POSTGRES_PASSWORD tag initial
bash liquibase --url="jdbc:postgresql://db:5432/$POSTGRES_DB"  --username=$POSTGRES_USER --password=$POSTGRES_PASSWORD --changeLogFile=$CHANGELOG_FILE update
