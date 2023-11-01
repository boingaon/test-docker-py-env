### Overview
This project intends to demostrate that environment variables injected by Docker are not visible by Python.

Build and run this container and you will see that Python's os.environ has no visibility to the "INJECT_THIS" variable.

Running `os.environ` yields only the following variables:
```
environ({'OLDPWD': '/', 'PATH': '/command:/lsiopy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin', 'PWD': '/app', 'LC_CTYPE': 'C.UTF-8'})
```

### Methods of Injection (all failed)
1) In the Dockerfile
2) Via the `docker run` command

### Docker Build Command
```
docker build -t test-py-docker-env .
```

### Docker Run Command
```
docker run --env-file env.list -d test-py-docker-env
```