# Create Docker network
docker network create todoappnetwork

# Run MongoDB container
docker run -d  -p 27017:27017 --name mongodb --network todoappnetwork mongo

# Run Frontend container
docker run -d  -p 8501:8501 --name frontendtodo --network todoappnetwork smitmark01/frontendtodo:local

# Run Backend container
docker run -d  -p 8080:8080 --name smittodobackend --network todoappnetwork smitmark01/smittodobackend:local

