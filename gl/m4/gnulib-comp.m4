# DO NOT EDIT! GENERATED AUTOMATICALLY!
# Copyright (C) 2004-2007 Free Software Foundation, Inc.
#
# This file is free software, distributed under the terms of the GNU
# General Public License.  As a special exception to the GNU General
# Public License, this file may be distributed as part of a program
# that contains a configuration script generated by Autoconf, under
# the same distribution terms as the rest of that program.
#
# Generated by gnulib-tool.
#
# This file represents the compiled summary of the specification in
# gnulib-cache.m4. It lists the computed macro invocations that need
# to be invoked from configure.ac.
# In projects using CVS, this file can be treated like other built files.


# This macro should be invoked from ./configure.in, in the section
# "Checks for programs", right after AC_PROG_CC, and certainly before
# any checks for libraries, header files, types and library functions.
AC_DEFUN([gl_EARLY],
[
  m4_pattern_forbid([^gl_[A-Z]])dnl the gnulib macro namespace
  m4_pattern_allow([^gl_ES$])dnl a valid locale name
  m4_pattern_allow([^gl_LIBOBJS$])dnl a variable
  m4_pattern_allow([^gl_LTLIBOBJS$])dnl a variable
  AC_REQUIRE([AC_PROG_RANLIB])
  AC_REQUIRE([AC_GNU_SOURCE])
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])
  AC_REQUIRE([AC_FUNC_FSEEKO])
  dnl Some compilers (e.g., AIX 5.3 cc) need to be in c99 mode
  dnl for the builtin va_copy to work.  With Autoconf 2.60 or later,
  dnl AC_PROG_CC_STDC arranges for this.  With older Autoconf AC_PROG_CC_STDC
  dnl shouldn't hurt, though installers are on their own to set c99 mode.
  AC_REQUIRE([AC_PROG_CC_STDC])
])

# This macro should be invoked from ./configure.in, in the section
# "Check for header files, types and library functions".
AC_DEFUN([gl_INIT],
[
  m4_pushdef([AC_LIBOBJ], m4_defn([gl_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([gl_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([gl_LIBSOURCES]))
  AM_CONDITIONAL([GL_COND_LIBTOOL], [true])
  gl_cond_libtool=true
  gl_source_base='gl'
  gl_HEADER_ARPA_INET
  AC_PROG_MKDIR_P
  gl_ERROR
  gl_FUNC_FSEEKO
  gl_STDIO_MODULE_INDICATOR([fseeko])
  gl_GETADDRINFO
  gl_FUNC_GETDELIM
  gl_FUNC_GETLINE
  gl_FUNC_GETPASS
  AC_SUBST([LIBINTL])
  AC_SUBST([LTLIBINTL])
  gl_INET_NTOP
  gl_INET_PTON
  gl_FUNC_LSEEK
  gl_UNISTD_MODULE_INDICATOR([lseek])
  gl_HEADER_NETINET_IN
  AC_PROG_MKDIR_P
  gl_FUNC_READLINE
  gl_TYPE_SOCKLEN_T
  gl_STDARG_H
  AM_STDBOOL_H
  gl_STDIO_H
  gl_FUNC_STRDUP
  gl_STRING_MODULE_INDICATOR([strdup])
  gl_HEADER_STRING_H
  gl_HEADER_SYS_SOCKET
  AC_PROG_MKDIR_P
  gl_UNISTD_H
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    gl_libobjs=
    gl_ltlibobjs=
    if test -n "$gl_LIBOBJS"; then
      # Remove the extension.
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      for i in `for i in $gl_LIBOBJS; do echo "$i"; done | sed "$sed_drop_objext" | sort | uniq`; do
        gl_libobjs="$gl_libobjs $i.$ac_objext"
        gl_ltlibobjs="$gl_ltlibobjs $i.lo"
      done
    fi
    AC_SUBST([gl_LIBOBJS], [$gl_libobjs])
    AC_SUBST([gl_LTLIBOBJS], [$gl_ltlibobjs])
  ])
])

# Like AC_LIBOBJ, except that the module name goes
# into gl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gl_LIBOBJ],
  [gl_LIBOBJS="$gl_LIBOBJS $1.$ac_objext"])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into gl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gl_REPLACE_FUNCS],
  [AC_CHECK_FUNCS([$1], , [gl_LIBOBJ($ac_func)])])

# Like AC_LIBSOURCES, except that it does nothing.
# We rely on EXTRA_lib..._SOURCES instead.
AC_DEFUN([gl_LIBSOURCES],
  [])

# This macro records the list of files which have been installed by
# gnulib-tool and may be removed by future gnulib-tool invocations.
AC_DEFUN([gl_FILE_LIST], [
  build-aux/GNUmakefile
  build-aux/config.rpath
  build-aux/gendocs.sh
  build-aux/link-warning.h
  build-aux/maint.mk
  doc/fdl.texi
  doc/gendocs_template
  doc/gpl-2.0.texi
  doc/lgpl-2.1.texi
  lib/error.c
  lib/error.h
  lib/fseeko.c
  lib/gai_strerror.c
  lib/getaddrinfo.c
  lib/getaddrinfo.h
  lib/getdelim.c
  lib/getdelim.h
  lib/getline.c
  lib/getline.h
  lib/getpass.c
  lib/getpass.h
  lib/gettext.h
  lib/inet_ntop.c
  lib/inet_ntop.h
  lib/inet_pton.c
  lib/inet_pton.h
  lib/lseek.c
  lib/netinet_in_.h
  lib/progname.c
  lib/progname.h
  lib/readline.c
  lib/readline.h
  lib/stdbool_.h
  lib/stdio_.h
  lib/strdup.c
  lib/string_.h
  lib/sys_socket_.h
  lib/unistd_.h
  lib/version-etc-fsf.c
  lib/version-etc.c
  lib/version-etc.h
  m4/arpa_inet_h.m4
  m4/error.m4
  m4/extensions.m4
  m4/fseeko.m4
  m4/getaddrinfo.m4
  m4/getdelim.m4
  m4/getline.m4
  m4/getpass.m4
  m4/gnulib-common.m4
  m4/include_next.m4
  m4/inet_ntop.m4
  m4/inet_pton.m4
  m4/lib-ld.m4
  m4/lib-link.m4
  m4/lib-prefix.m4
  m4/lseek.m4
  m4/netinet_in_h.m4
  m4/readline.m4
  m4/socklen.m4
  m4/sockpfaf.m4
  m4/stdarg.m4
  m4/stdbool.m4
  m4/stdio_h.m4
  m4/strdup.m4
  m4/string_h.m4
  m4/sys_socket_h.m4
  m4/unistd_h.m4
])
