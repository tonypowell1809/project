nginx:
  pkg:
    - installed
  service.running:
    - enable: True
    - watch:
      - pkg: nginx
      - file: /etc/nginx/nginx.conf
      - file: /etc/nginx/sites-available/default

/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://nginx.conf
    - user: root
    - group: root
    - mode: 640
/etc/nginx/sites-available/default:
  file.managed:
    - source: salt://default
    - user: root
    - group: root
    - mode: 640
~                 
