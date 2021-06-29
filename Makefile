.PHONY: venv
venv:
	python3 -m venv && \
		venv/bin/activate && \
		pip install --upgrade pip

.PHONY: reqs
reqs:
	pip install -r requirements.txt

.PHONY: run
run:
	export FLASK_APP="inventory" && \
	export FLASK_ENV=development && \
	flask run

