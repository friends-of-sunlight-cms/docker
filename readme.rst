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

- Apache
- PHP 
- latest MariaDB

Installation
************

#. Download this repository 
#. Copy the folder ``.docker`` and its contents to the root directory 
#. Run ``cd .docker``
#. Run ``docker-compose up -d``
#. Run ``docker-compose exec local-apache bash`` or ``./bash.sh`` 
    #. Run ``composer install``
#. Open http://localhost
#. Follow the system instructions