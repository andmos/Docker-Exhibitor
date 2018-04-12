### Docker-Exhibitor

Netflix's [Exhibitor-project](https://github.com/Netflix/exhibitor) in a Docker-container.
Exhibitor is a great way to manage Zookeeper instances and its connected nodes.

To build:

        docker build -t <username>/exhibitor .

To run against a local Zookeeper instance, simply share zookeepers location with the container:

        docker run -tdp 8000:8000 -v /var/lib/zookeeper:/var/lib/zookeeper -v /etc/zookeeper:/etc/zookeeper --name exhibitor --hostname exhibitor  <username>/exhibitor. 

Access Exhibitor: ``http://localhost:8000/exhibitor/v1/ui/index.html`` and add ``/opt/zookeeper``as path to zookeeper.

To link container against a Zookeeper in another Docker-container, use the [--link parameter.](https://docs.docker.com/userguide/dockerlinks/)
