dir=${0%/*}
docker run -it --cap-add sys_ptrace --security-opt seccomp=unconfined -v $(pwd)${dir#?}/../../:/host lib31
