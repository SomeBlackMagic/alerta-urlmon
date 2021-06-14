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