About
=======
A Docker container that retrieves a screenshot image of the entire web page using headless from Google Chrome.
It's possible take a screenshot on a portrait web page.
It's generally okay to have a fixed header, but a fixed footer will probably give you weird results.


How To Install
==============

docker pull adjeras/docker_capture_web_otorio


How To Use
=========

```bash
docker run -v `pwd`:/tmp/screenshot adjeras/docker_capture_web_otorio <URL> <output_image.png> [options]
```

or

```bash
./capture <URL> <output_image.png> 

If you choose not to specify the output_image name, an image nme will be created in the following format <domain><timestamp>.png
./capture <URL>

```

Example
-------

### PC
```bash
docker run -v `pwd`:/tmp/screenshot adjeras/docker_capture_web_otorio "https://www.theverge.com/" theVerge.png
```

### iPhone
```bash
docker run -v `pwd`:/tmp/screenshot adjeras/docker_capture_web_otorio "https://www.theverge.com/" theVerge.png -w 414x735 --ua 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1'
```

HELP
----

```bash
% docker run -v `pwd`:/tmp/screenshot adjeras/docker_capture_web_otorio
usage: screenshot.py [-h] [-w WINDOW_SIZE] [--ua USER_AGENT] [--wait WAIT]
                     [-v] [--vv]
                     url filename

positional arguments:
  url              specify URL
  filename         specify capture image filename

optional arguments:
  -h, --help       show this help message and exit
  -w WINDOW_SIZE   specify window size like 1200x800
  --ua USER_AGENT  specify user-agent
  --wait WAIT      specify wait seconds after scroll
  -v               set LogLevel to INFO
  --vv             set LogLevel to DEBUG
```

How To Build
===========

```bash
./build
```
