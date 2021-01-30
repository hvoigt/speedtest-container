LINK ?= https://bintray.com/ookla/download/download_file?file_path=ookla-speedtest-1.0.0-x86_64-linux.tgz

image: speedtest
	docker build -t speedtest .

speedtest:
	curl $(LINK) -L | tar xzf - speedtest

clean:
	rm -rf speedtest
