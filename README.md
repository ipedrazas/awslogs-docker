# awslogs-docker
Docker for [Jorge Bastida's](https://twitter.com/jorgebastida) project [awslogs](https://github.com/jorgebastida/awslogs): a simple command line tool for querying groups, streams and events from [Amazon CloudWatch](http://aws.amazon.com/cloudwatch/) logs.


There's a Dockerfile that allows you to build your own docker awslogs image. To build the image you have to clone the repo and then do:

`docker build -t youruser/awslogs . `

Once the image is built you can call awslogs by executing:

```
docker run -it --rm \
 -e AWS_ACCESS_KEY_ID=XXX \
 -e AWS_SECRET_ACCESS_KEY=XXX \
 -e AWS_REGION=XXX \
 youruser/awslogs bash -c "awslogs groups"
 ```

If you don't want to build it and just want to give it a go, run this command:

```
docker run -it --rm \
 -e AWS_ACCESS_KEY_ID=XXX \
 -e AWS_SECRET_ACCESS_KEY=XXX \
 -e AWS_REGION=XXX \
 ipedrazas/awslogs-docker bash -c "awslogs groups"
 ```
