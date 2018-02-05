all:
		mvn undeploy clean install deploy

compile:
		mvn clean compile -Dmaven.test.skip=true
dev:
		mvn clean install -Dmaven.test.skip=true -P dev

devtest:
		mvn clean install -P dev

preprod:
		mvn clean install -Dmaven.test.skip=true  -P preprod

preprodtest:
		mvn clean install  -P preprod

prod:
		mvn clean install -Dmaven.test.skip=true  -P prod

prodtest:
		mvn clean install  -P prod

clean:
		mvn clean

install:
		mvn clean install -Dmaven.test.skip=true

installtest:
		mvn clean install

package:
		mvn clean package

first:
		mvn clean package cargo:deploy

deploy:
		mvn cargo:deploy

undeploy:
		mvn cargo:undeploy
