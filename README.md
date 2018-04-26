# docker-ngnix-reverse-proxy-self-signed-ssl

## Introduction
Docker-compose file triggers three containers to deploy simple self signed ssl supported ngnix reverse proxy ;
 * from jwilder's nginx-proxy (for easy ngnix reverse proxy) 
 * whoami (for test server)
 * create-self-signed-cert container (without Root CA) 


### Directory Structure
```
├── create-self-signed-cert/   # Docker setup to for self signed sll
│   ├── Dockerfile             # Dockerfile to run create-cert.sh
│   └── create-cert.sh         # creates self singed ssl
├── test.sh                    # test command, default hostname: localhost 
├── docker.compose.yml         # ngnix reverse proxy with ssl
├── LICENSE
└── README.md
```
### Quick Test
Assume you like to run it for **localhost**

	docker-compose up

Test with curl command : (-k flag used to ignore Root CA warnings)

	curl -k https://localhost

### Configure Hostname
Change environment variables in **docker-compose.yml** file;
* VIRTUAL_HOST  in server container (whoami container in our case)
* CREATE_SS_CERT_FOR in create-self-signed-cert container

### Configure Certifacate
Check **create-self-signed-cert/create-cert.sh** file and change certificate variables as you wish.
