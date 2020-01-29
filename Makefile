.PHONY: all install clean
all: build install

build: lokey/__init__.py eris/__init__.py urllib2/__init__.py
	python3 setup.py build

install: build
	python3 setup.py install

clean:
	rm -rf build/
	rm -rf dist/
	rm -rf lokey.egg-info/ 
	rm -f eris/__init__.pyc
	rm -f lokey/__init__.pyc 
	rm -f urllib2/__init__.pyc 
