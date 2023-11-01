FROM linuxserver/blender

WORKDIR /app

ENV INJECT_THIS = "inject this"

COPY run.py ./

RUN apt-get update && apt-get -y install python3-pip

CMD ["python3", "-u", "run.py"]