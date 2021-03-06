#!/usr/bin/env python

import setuptools

version = '3.3.0-sysadmws-1'

setuptools.setup(
    name="alerta-urlmon",
    version=version,
    description='Alerta script for URL monitoring',
    url='https://github.com/sysadmws/alerta-urlmon',
    license='MIT',
    author='Nick Satterly',
    author_email='nick.satterly@theguardian.com',
    py_modules=['urlmon', 'urllib'],
    install_requires=[
        'alerta',
        'requests'
    ],
    include_package_data=True,
    zip_safe=False,
    entry_points={
        'console_scripts': [
            'alerta-urlmon = urlmon:main'
        ]
    },
    keywords="alerta url monitoring",
    classifiers=[
        'Topic :: System :: Monitoring',
    ]
)
