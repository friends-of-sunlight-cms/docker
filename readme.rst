docker
######
Dockerization of the environment for Sunlight CMS 8

.. contents::

Requirements
************

- `Docker <https://docs.docker.com/get-docker/>`_
- `Sunlight CMS 8.x <https://github.com/sunlight-cms/sunlight-cms>`_

Environment
***********

- Apache/2.4.38 (Debian)
- PHP 8.0.9 
- MariaDB (latest)
- Adminer (latest)
- Composer (latest)

Installation
************

#. Download this repository 
#. Copy the folder ``.docker`` and its contents to the root directory 
#. Run ``cd .docker``
#. Run ``docker-compose up -d`` or ``./up.sh`` 
#. Run ``docker-compose exec local-apache bash`` or ``./bash.sh`` 
#. Run ``composer install`` in bash (``root@xxxxxxxxx:/var/www/html# <here>``)
#. Open http://localhost
#. Follow the system instructions

How to run in localhost
***********************
- Website - http://localhost (port: ``80``)
- Adminer - http://localhost:8080 (port: ``8080``) 

Database connection
-------------------

- Server: ``db``
- User: ``root``
- Password: ``root``
- Database: ``created during installation or manually``
