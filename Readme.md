# Application de Visualisation des Capteurs de Trafic

## Présentation
Ce projet convertit des données statiques de capteurs de trafic depuis une base de données MongoDB en une carte web interactive et dynamique. Il utilise **Python**, **Flask** et **Folium** pour visualiser la répartition géographique des capteurs dans la région de Los Angeles.

## Fonctionnalités
- **Connexion Dynamique :** Se connecte instantanément à une instance MongoDB locale pour récupérer la liste des capteurs en temps réel.
- **Carte Folium :** Génère une carte interactive avec des contrôles de zoom.
- **Code Couleur Directionnel :** Utilise des marqueurs colorés selon la direction de l'autoroute (Nord, Sud, Est, Ouest).
- **Popups et Informations Interactives :** Les utilisateurs peuvent cliquer sur n'importe quel capteur pour voir son ID, son Autoroute (Fwy), sa Direction, son District et ses coordonnées précises.
- **Conteneurisation (Docker) :** L'ensemble de l'application web est encapsulé dans un conteneur Docker afin de garantir son fonctionnement sur n'importe quelle machine, sans avoir à configurer un environnement Python.

---

## Comment Lancer ce Projet

### Prérequis
1. **MongoDB :** Vous devez avoir MongoDB en cours d'exécution localement sur le port `27017` avec une base de données nommée `Trafic` contenant une collection appelée `sensors`.
2. **Docker Desktop :** Assurez-vous que Docker Desktop est installé et en cours d'exécution.

### Instructions d'Exécution
Vous pouvez facilement démarrer ce projet grâce à Docker.

1. Ouvrez votre terminal dans ce répertoire.
2. Construisez l'image Docker en exécutant la commande suivante :
   ```bash
   docker build -t traffic-app .
   ```
3. Une fois l'image créée, démarrez le serveur en exécutant :
   ```bash
   docker run -d -p 5000:5000 traffic-app
   ```
4. Ouvrez votre navigateur web et rendez-vous à l'adresse :
   **http://localhost:5000**

Vous y verrez la carte interactive Folium générée dynamiquement à partir des données MongoDB !
