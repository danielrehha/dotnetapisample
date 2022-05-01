# Appointment booking project REST API

This is a REST API written in .NET 5 for my personal appointment management system project.

Written with Entity Framework Core code first approach it connects to a managed Postgres database.

Connection string is injected via Azure DevOps CI pipeline where the project is dockerized then pushed to an Azure Container Registry.
The virtual machine is hosted in Azure and is running linux, where an instance of Watchtower (https://containrrr.dev/watchtower/) checks for new images every 30 seconds and pulls the latest image if a new one is detected.

Using a custom docker-compose file I am able to spin up multiple instances of my API and round-robin traffic through an Nginx reverse proxy.

Using Azure's network management options I am able to restrict incoming traffic to a single private IP address, which in this case is my web client's address - located in the same virtual network.
