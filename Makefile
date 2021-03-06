all: nanoklogd

install: all
	install -Dm755 nanoklogd ${DESTDIR}/usr/bin/nanoklogd
	install -Dm755 svlogtail ${DESTDIR}/usr/bin/svlogtail
	install -Dm755 syslog-stripdate ${DESTDIR}/usr/bin/syslog-stripdate
	mkdir -p ${DESTDIR}/etc ${DESTDIR}/var/log
	cp -a sv ${DESTDIR}/etc
	cp -a socklog ${DESTDIR}/var/log

clean:
	rm -f nanoklogd
