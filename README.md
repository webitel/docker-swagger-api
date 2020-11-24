# docker-swagger-api
Webitel API documentation generator

## Run container

    docker run -p 8080:8080 -e "HOST_NAME=stage.webitel.com" -dt webitel/swagger-api-docs
 
## nginx

```
  location /swagger(/?)(.*) {
    rewrite ^/swagger(/?)(.*) /$2 break;                                                                                                                                                  
    proxy_set_header Host $host;                                                                                                                         
    proxy_set_header X-Real-IP $remote_addr;                                                                                                             
    proxy_set_header X-Forwarded-Host $host;                                                                                                             
    proxy_set_header X-Forwarded-Proto https;                                                                                                            
    proxy_set_header X-Forwarded-Server $host;                                                                                                           
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;                                                                                         
    proxy_pass http://127.0.0.1:8080/;                                                                                                                   
    client_max_body_size 10M;                                                                                                                    
  }
```
