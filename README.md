### Docker-Exhibitor

Netflix's [Exhibitor-project](https://github.com/Netflix/exhibitor) in a Docker-container. 
Exhibitor is a great way to manage Zookeeper instances and its connected nodes. 

To build:
	
        docker build -t <username>/exhibitor .

To run against a local Zookeeper instance, simply share zookeepers location with the container: 

        docker run -p 8000:8000 -v /path/to/zookeeper:/opt/zookeeper -i -t <username>/exhibitor. 

Access Exhibitor: http://localhost:8000/exhibitor/v1/ui/index.html and add ``/opt/zookeeper``as path to zookeeper. 

