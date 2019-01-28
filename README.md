# wp-liveproxy
Workplace Live Proxy container source files

# How to build a container

1. [Install docker](https://docs.docker.com/install/)

2. Clone this project and switch into the project directory. 
```
git clone https://github.com/saitoapp/wp-liveproxy.git
cd wp-liveproxy
```

3. Workplace Live Proxy use a domain name to get all livestream traffic. For now this is a beta feature. The domain name should be a subdomain of a validated Workplace domain for security reasons. E.g: live.myvalidateddomain.com. Generate a valid key/cert pair for this domain, replacing privkey.pem and cert.pem (PEM format). Keep track of the expiration date so you can renew it before it gets expired.

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
