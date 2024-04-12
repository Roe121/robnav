# robnav
## Motion Planning pour TurtleBot Burger

Ce projet vise à mettre en œuvre des techniques de motion planning pour contrôler un robot TurtleBot Burger. Le TurtleBot Burger est une plateforme robotique mobile largement utilisée pour la recherche et l'éducation dans le domaine de la robotique. En utilisant le laser par défaut du robot, avec des algorithmes de planification de mouvement avancés, notre objectif est de permettre au TurtleBot Burger de naviguer efficacement et en toute sécurité dans un environnement réel.

## Installation
Pour installer ce projet, vous devez cloner ce repository dans le home.

```
cd
git clone https://github.com/Roe121/robnav.git

```

## Utilisation

1- Pour lancer le programme de mapping, exécutez le code suivant

```
cd scripts
./slam.sh
```

2- pour lancer un algorithme de motion planning
```
cd scripts
./motion_planning.sh
```

l'algorithme par défaut est le A*, si vous voulez changer, allez dans ros_motion_planning/src/user_config/user_config.yaml
