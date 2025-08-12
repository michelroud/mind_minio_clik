# Partir de l'image officielle MindsDB
FROM mindsdb/mindsdb:latest

# Installer dépendances supplémentaires (pendant le build)
RUN pip install --no-cache-dir statsforecast==1.4.0 lightwood neuralforecast

# Copier ton script dans l'image
COPY start_mindsdb.sh /start_mindsdb.sh

# Rendre le script exécutable
RUN chmod +x /start_mindsdb.sh

# Utiliser ton script comme point d'entrée
ENTRYPOINT ["/start_mindsdb.sh"]
