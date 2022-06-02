FROM pepijnbloem/pb-restserv-dev
LABEL maintainer="ISM_HAN"

ARG DEBIAN_FRONTEND=noninteractive

COPY rest01/ /restservice/

#deze restservice luistert op poort 5001
CMD python3 /restservice/restservice.py
