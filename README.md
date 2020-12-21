# CS143-PA

This image is for Programming Assignment of *CS143 Compilers* course from Stanford. You can find the course in [edX](https://courses.edx.org/) and [the website](http://web.stanford.edu/class/cs143/) for this course. To get this image, run:

```bash
docker pull gkzhb/cs143-pa
```

> **Notice**: This image does not contain the project files but provides the running environment.
>
> You need to mount your cool project root (full path) to the path `/usr/class/cool` of this image:
> ```bash
> docker run -it -v <your-cool-path>:/usr/class/cool gkzhb/cs143-pa /bin/bash
> ```
> In this way, you can use your preferred editors on your host machine to code.

[Click here to download PA tarball](https://courses.edx.org/asset-v1:StanfordOnline+SOE.YCSCS1+1T2020+type@asset+block@student-dist.tar.gz)

This image contains latest bison from Ubuntu 16.04 and compiled flex 2.5.39.

## Problem: Undefined reference to 'yylex()'

If you encounters the problem `Undefined reference to 'yylex()'` in PA2, you need to add `%option noyywrap` in Definition Section of `cool.flex`.

You can find more info in [g++ - Undefined reference to 'yylex()' - Stack Overflow](https://stackoverflow.com/questions/1480138/undefined-reference-to-yylex)

Besides, if you use flex 2.6, the solution at the beginning may be of no use. Remove the value of  variable `LIB` in `Makefile`, in other words, remove `-lfl` to solve this compiling error (also reference to Stack Overflow link above). But there is no guarantee that this will produce the correct program you want.
