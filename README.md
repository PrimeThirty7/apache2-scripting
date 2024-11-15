# apache2-scripting
## Apache2 Script Ready Web Server

**Please note - this isn't ready for production use. It is suitable for internal testing only.**

This docker image is based on the php-apache2 image, with minor changes to support Python, PHP and Perl scripts. It is not meant for production use, more of a simple repeatable base dockerised environment for hosting scripts whilst being developed.

The document root by default is /var/www/html with scripts also beind available in /var/www/cgi-bin. By default if you don't map a local directory into those paths, you will be treated with a Default Page, based loosely on the original provided by Debian (and then modified by Ubuntu) used by the Apache2 package management team.

This docker image is not intended for production use, more as a simple, repeatable environment for development use. 

## Ports exposed

Apache2 has been configured to listed on TCP port 18080 so as to avoid issues with using a port below 1024.

## Deployment

The example below will deploy the container, whilst mapping two local directories into the /var/www/html and /var/www/cgi-bin container directories.
```
docker run -d \
 -p 18080:18080 \
 -v /storage/docker/apache2-scripting/html:/var/www/html/ \
 -v /storage/docker/apache2-scripting/cgi-bin:/var/www/cgi-bin \
 --name Apache2-Scriping \
primethirty7/apache2-scripting
```
Please note the example page and scripts within the container will not be available if you map the volumes as shown. If you do not wish to map any volumes then omit the -v lines.
