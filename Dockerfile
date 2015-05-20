FROM python:2-onbuild
MAINTAINER Ivan Pedrazas <ipedrazas@gmail.com>

# We need to install gevent from git because of a bug
# https://github.com/docker-library/python/issues/29
RUN pip install --upgrade cython git+git://github.com/surfly/gevent.git#egg=gevent
