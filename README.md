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


