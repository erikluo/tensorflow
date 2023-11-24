TARGET_IMAGE=dockerhub.com/xx/tensorflow_runtime:v0
COMPILE_IMAGE=mirrors.tencent.com/xxx/bazel-compile:latest

compile:
        sudo docker run --rm  -it  -v $(HOME)/.gitconfig:/root/.gitconfig  -v $(HOME)/.git-credentials:/root/.git-credentials -v $(PWD):/home/src -w /home/src \
                $(COMPILE_IMAGE) ./build.sh
shell:
        sudo docker run --rm  -it  -v $(HOME)/.gitconfig:/root/.gitconfig  -v $(HOME)/.git-credentials:/root/.git-credentials -v $(PWD):/home/src -w /home/src \
                $(COMPILE_IMAGE) /bin/bash

download_bazel:
        cd "/usr/local/lib/bazel/bin" && curl -fLO https://releases.bazel.build/5.1.1/release/bazel-5.1.1-linux-x86_64 && chmod +x bazel-5.1.1-linux-x86_64 

build:
        sudo docker build -t $(TARGET_IMAGE) -f devops/Dockerfile .
