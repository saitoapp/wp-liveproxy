# wp-liveproxy
Workplace Live Proxy container source files

# How to build a Workplace Live Proxy container with your custom key/cert.

1. [Install docker](https://docs.docker.com/install/)

2. Clone this project and switch into the project directory. 
```
git clone https://github.com/saitoapp/wp-liveproxy.git
cd wp-liveproxy
```

3. Workplace Live Proxy uses a domain name to receive livestream HTTP requests. For now this is a beta feature. The domain name should be a subdomain of a validated Workplace domain for security reasons. E.g.: liveproxy.myvalidateddomain.com. It is possible to add your valid key/cert pair for your domain, replacing privkey.pem and cert.pem (PEM format). If you do, keep track of the expiration date so you can renew it before it gets expired. Some people like to use SECRETS as a secure way to provide the container the cert/key pair.

4. Build a new docker image.
```
docker build -t wp-liveproxy .
```

5. Check if the image was successfully created.
```
docker image ls
```

6. Use this container in for favorite container orchestration solution. If you want to try this docker container first, just run the command below. The port 443 on your HOST is mapped to the port 443 of the container.
```
docker run -d -p 443:443 wp-liveproxy
```

7. You can test if the URL rewrite is working fine by using these URLs:
```
https://127.0.0.1/fbhost_s3.us-east-2.amazonaws.com/saitoprofilephoto/averybigpath1averybigpath2averybigpath3averybigpath4averybigpath5averybigpath6averybigpath7averybigpath8averybigpath9averybigpath10/averybigpath1averybigpath2averybigpath3averybigpath4averybigpath5averybigpath6averybigpath7averybigpath8averybigpath9averybigpath10/153099672346055.mpd

https://127.0.0.1/fbhost_s3.us-east-2.amazonaws.com/saitoprofilephoto/averybigpath1averybigpath2averybigpath3averybigpath4averybigpath5averybigpath6averybigpath7averybigpath8averybigpath9averybigpath10/averybigpath1averybigpath2averybigpath3averybigpath4averybigpath5averybigpath6averybigpath7averybigpath8averybigpath9averybigpath10/153099672346055_0-151000.m4a

https://127.0.0.1/fbhost_s3.us-east-2.amazonaws.com/saitoprofilephoto/averybigpath1averybigpath2averybigpath3averybigpath4averybigpath5averybigpath6averybigpath7averybigpath8averybigpath9averybigpath10/averybigpath1averybigpath2averybigpath3averybigpath4averybigpath5averybigpath6averybigpath7averybigpath8averybigpath9averybigpath10/153099672346055_0-151000.m4v

```
