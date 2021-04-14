# Steps

```
docker build -t salt-minion .
docker run -i -v /path/to/local/salt:/srv/salt -t salt-minion
```