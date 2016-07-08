install: check-spark-home check-conf-files
	cp -S.orig sbin/start-slaves.sh ${SPARK_HOME}/sbin
	cp -S.orig sbin/stop-slaves.sh ${SPARK_HOME}/sbin
	cp -S.orig sbin/spark-daemon.sh ${SPARK_HOME}/sbin
	cp -S.orig conf/spark-env.sh ${SPARK_HOME}/conf
	cp -S.orig conf/spark-default.conf ${SPARK_HOME}/conf

check-spark-home:
ifndef SPARK_HOME
    $(error SPARK_HOME is undefined)
endif

check-conf-files:
ifeq (,$(wildcard conf/spark-env.sh))
    $(error Create conf/spark-env.sh from template before installing)
endif
ifeq (,$(wildcard conf/spark-default.conf))
    $(error Create conf/spark-default.conf from template before installing)
endif
