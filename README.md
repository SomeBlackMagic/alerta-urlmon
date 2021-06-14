URL Monitoring for Alerta
=========================

Original README with License
----------------------------
https://github.com/alerta/alerta-contrib/blob/master/integrations/urlmon/README.md


## Quick Start

    sudo docker run -d --restart=unless-stopped -v "$(pwd)/settings.py:/app/settings.py" someblackmagic/alerta-urlmon


Add settings.py in container before run

example settings.py
```
checks = [
    {
        "resource": "google.net",
        "url": "https://google.net/",
        "environment": "Infra",
        "service": ["Web"],
        "check_ssl": True,

        "search": "Google search engine",

        "warning": 10000,
        "critical": 20000,
        "count": 2,

    }
]

```

[Helm](https://helm.sh) must be installed to use the charts, please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repo as follows:

```shell
helm repo add alerta-urlmon https://someblackmagic.github.io/alerta-urlmon/
helm repo update
```

