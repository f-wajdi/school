FROM wodby/openjdk:17-alpine

#expose le port de l'application Spring Boot
EXPOSE 8089

#Ajouter le livrable
ADD http://192.168.50.4:8081/repository/maven-releases/tn/m104/rh/school/1.0.0/school-1.0.0.jar . 

#commande d'exécution de l'application spring Boot
ENTRYPOINT ["java","-jar","/school-1.0.0.jar"]
