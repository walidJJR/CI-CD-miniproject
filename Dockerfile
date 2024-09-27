# Étape 1 : Utiliser une image de base avec Python
FROM python:3.8-slim AS base

# Étape 2 : Définir le répertoire de travail
WORKDIR /app

# Étape 3 : Copier le fichier requirements.txt
COPY requirements.txt .

# Étape 4 : Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Étape 5 : Copier le code de l'application
COPY mini-groq.py .

# Étape 6 : Exposer le port sur lequel l'application va écouter
EXPOSE 5000

# Étape 7 : Commande pour démarrer l'application
CMD ["uvicorn", "mini-groq:app", "--host", "0.0.0.0", "--port", "5000"]
