# dockerfiles

A collection of Dockerfiles for pwn, organized by libc version. The dockerfiles were forked from Redpwn and made some changes as per my preference
 

## USE

Run the `build.sh` command in a folder to build the image. 

Then run `run.sh` from anywhere to mount the current directory under `/host` of the docker image. You can also just copy the command (it's only one line) from `run.sh` to customize as you see fit.  

# Tools installed.



## nasm
## gdb-pwndbg,
## pwngdb
## fish
## ltrace, strace,
## socat,
## netcat,
## ruby,
## vim,
## pwntools
## curl
## gcc

# DEBUG WITH GDB

To debug, Use two terminals.
One to run the process and other two debug the process using gdb.
No need to run editor from the docker itself. edit the scripts from host machine :P
