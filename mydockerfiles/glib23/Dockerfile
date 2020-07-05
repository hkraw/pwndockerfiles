FROM ubuntu:16.04

RUN dpkg --add-architecture i386 && apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -qy \
    git nasm  python \
    build-essential \
    python-dev python-pip python-setuptools \
    libc6-dbg \
    libc6-dbg:i386 \
    gcc-multilib \
    gdb \
    gcc \
    wget \
    curl \
    fish \
    ltrace \
    strace \
    cmake \
    python-capstone \
    socat \
    netcat \
    ruby \
    vim \
    libc6:i386 libncurses5:i386 libstdc++6:i386 \
    lxterminal && \
    apt-get clean

RUN pip install --no-cache-dir pwntools && \
    gem install one_gadget

RUN cd ~/ && \
    git clone https://github.com/pwndbg/pwndbg.git && \
    cd ~/pwndbg/ && ./setup.sh

RUN cd ~/ && \
    git clone https://github.com/scwuaptx/Pwngdb.git

RUN cd ~/ && \
    git clone https://github.com/hkraw/.files.git && \
    cp ~/.files/.vimrc . && cp ~/.files/.gdbinit .    
ENV LANG C.UTF-8

VOLUME ["/host"]
WORKDIR /host
CMD ["/usr/bin/fish"]
