spark_home := /software6/apps/spark/1.6.0
install: check-conf-files
	cp sbin/slaves.sh $(spark_home)/sbin/
	cp sbin/spark-daemon.sh $(spark_home)/sbin/
	cp conf/spark-env.sh $(spark_home)/conf/
	cp conf/spark-default.conf $(spark_home)/conf/

check-conf-files:
ifeq (,$(wildcard conf/spark-env.sh))
    $(error Execute configure script before installing)
endif
ifeq (,$(wildcard conf/spark-default.conf))
    $(error Execute configure script before installing)
endif
