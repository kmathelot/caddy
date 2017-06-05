# caddy

This contain Caddy image, see https://caddyserver.com/ for more.  

Caddy is a really simple HTTP/2 web server.  

All you need is a Caddyfile.  

```
localhost:80 {
  gzip
}
```

docker run -p 80:80 -v $(pwd):/var/www/html kmathelot/caddy  

your website will be accessible on http://localhost  
