Usage
=====
do like below and the program is output in the build directory.
```
% docker run --name buildtmuxc7 -v $(pwd)/build:/build -v $(pwd)/files:/files -v $(pwd)/scripts:/scripts --rm -it centos:7 /scripts/build.sh
```
