# Mini-Projet-WebInfraDeployment

# ec2.tf
1. Création d'une instance EC2 à partir de l'AMI Amazon Linux la plus à jour (ami-03c7d01cf4dedc891) en utilisant la variable d'entrée instancetype pour définir le type d'instance. Les tags sont également définis à partir de la variable d'entrée tags.

2. Établissement d'une connexion SSH à l'instance EC2 en utilisant une clé privée stockée à var.private_key_path.

3. Exécution de commandes sur l'instance EC2 en utilisant les provisioners local-exec et remote-exec.

4. Le provisioner local-exec supprime le fichier "infos.txt" s'il existe, puis écrit l'adresse IP publique de l'instance, la zone de disponibilité de l'instance et l'ID de l'instance dans le fichier "infos.txt".

5. Le provisioner remote-exec installe Nginx version 1.12 sur l'instance et démarre le service Nginx.

6. Définition du groupe de sécurité pour ouvrir les ports 80 et 443.

7. Définition de l'adresse IP publique de l'instance

# variables.tf
Les variables définies dans ce code sont:

1. instancetype : il s'agit d'une variable de type string qui représente le type d'instance EC2 que nous souhaitons créer. Cette variable est décrite à l'aide d'un texte descriptif. Cette variable doit être définie ailleurs dans le code.

2. private_key_path : il s'agit d'une variable qui représente le chemin du fichier de clé privée utilisé pour l'accès SSH à l'instance EC2. Aucune valeur par défaut n'est définie, ce qui signifie que cette variable doit être définie ailleurs dans le code.

3. tags : il s'agit d'une variable de type map qui permet de définir un ensemble de balises à appliquer aux ressources créées par le module. Cette variable a une valeur par défaut d'un dictionnaire de balises contenant une seule balise nommée "name".

4. key_name : il s'agit d'une variable de type string qui représente le nom de la clé SSH à utiliser pour accéder à l'instance EC2. Cette variable a une valeur par défaut de "kp-dreamteam".

Ces variables vont nous permettre


