# Fuzzers

These are fuzzers designed for use with `libFuzzer` or `afl`. They can
be used to run on Google's OSS-Fuzz (https://github.com/google/oss-fuzz/).

The convention used here is that the initial values for each parser fuzzer
are taken from the $NAME.in directory.

Crash reproducers from OSS-Fuzz are put into $NAME.repro directory for
regression testing with top dir 'make check'.


# Running a fuzzer using clang

Use the following commands on top dir:
```
export CC=clang-5.0
export CFLAGS="-O1 -g -fno-omit-frame-pointer -gline-tables-only -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -fsanitize=undefined,integer,nullability -fsanitize=address -fsanitize-address-use-after-scope -fsanitize-coverage=trace-pc-guard,trace-cmp"
./configure --enable-fuzzer-target --enable-static --disable-doc --disable-gcc-warnings --disable-hardware-acceleration
make clean
make
cd fuzz

# build and run gnutls_base64_decode_fuzzer
UBSAN_OPTIONS=print_stacktrace=1 ASAN_SYMBOLIZER_PATH=/usr/lib/llvm-5.0/bin/llvm-symbolizer \
  ./run-clang.sh gnutls_base64_decode_fuzzer
```


# Running a fuzzer using AFL

Use the following commands on top dir:

```
$ CC=afl-clang-fast ./configure --disable-doc
$ make -j$(nproc) clean all
$ cd fuzz
$ ./run-afl.sh gnutls_base64_decode_fuzzer
```

# Fuzz code coverage using the corpus directories *.in/

Code coverage reports currently work best with gcc+lcov+genhtml.

In the top directory:
```
CC=gcc CFLAGS="-O0 -g" ./configure --disable-doc --disable-manywarnings
make fuzz-coverage
xdg-open lcov/index.html
```

Each fuzzer target has it's own files/functions to cover, e.g.
`gnutls_base64_decode_fuzzer` covers lib/x509_b64.c.

To work on corpora for better coverage, `cd fuzz` and use e.g.
`./view-coverage.sh gnutls_base64_decode_fuzzer`.


# Enhancing the testsuite for issues found

Each reproducer corpus should be placed into <fuzzer>.repro/.