#!/bin/sh
set -e

# --- 1. Installation des dépendances (en tant que root) ---
echo "Installing neuralforecast as root..."
pip install --no-cache-dir statsforecast==1.4.0
#statsforecast==1.4.0

# --- 2. Exécution de l'application (directement en tant que root) ---
echo "Starting MindsDB as root..."
# Pas besoin de 'su' ou de 'chown'. On lance directement la commande.
exec python -m mindsdb --api=http,mysql --config=/root/mindsdb_config.json