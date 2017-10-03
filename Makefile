# Makefile
env: env/bin/activate

env/bin/activate: requirements.txt
	test -d env || virtualenv -p python3 env
	env/bin/pip install -Ur requirements.txt
	touch env/bin/activate

clean:
	rm -rf env
