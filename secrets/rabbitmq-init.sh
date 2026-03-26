#!/bin/sh
# Attendre que RabbitMQ soit prêt
sleep 15

RABBIT_USER=$(cat /run/secrets/rabbit_user)
RABBIT_PASS=$(cat /run/secrets/rabbit_password)

rabbitmqctl add_user "$RABBIT_USER" "$RABBIT_PASS"
rabbitmqctl set_user_tags "$RABBIT_USER" administrator
rabbitmqctl set_permissions -p / "$RABBIT_USER" '.*' '.*' '.*'
rabbitmqctl delete_user guest