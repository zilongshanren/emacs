## This file is an edited copy if ../lib/gnulib.mk.
##
## The purpose of the edits is to avoid generating any headers
## which would conflict with either the headers we have in nt/inc,
## or with MinGW system headers and subsequent redirection of some
## functions in nt/inc/ms-w32.h.
##
## In general, do NOT remove anything from ../lib/gnulib.mk that
## doesn't need to be removed, to minimize the differences from
## upstream gnulib.mk and thus make the maintenance easier.  Every
## header file whose generation is controlled by configure-time tests
## does NOT need to be removed; instead, force the configure script to
## accept whatever MinGW has to offer, by defining the appropriate
## Autoconf variable in the nt/mingw-cfg.site file.  Headers that are
## generated conditionally have the tell-tale "if GL_GENERATE_foo_H"
## condition before their Makefile snippet in this file.  Likewise, do
## NOT remove gnulib modules which introduce header files that don't
## exist in MinGW and in nt/inc/, since they cannot possibly clash
## with anything.  Gnulib modules that introduce source *.c files also
## need not be removed; if they define functions that could clash with
## the w32 substitutes in Emacs, disable their compilation by defining
## suitable variables in nt/mingw-cfg.site.
##
## Process this file with automake to produce Makefile.in.
# Copyright (C) 2002-2015 Free Software Foundation, Inc.
#
# This file is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This file is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this file.  If not, see <http://www.gnu.org/licenses/>.
#
# As a special exception to the GNU General Public License,
# this file may be distributed as part of a program that
# contains a configuration script generated by Autoconf, under
# the same distribution terms as the rest of that program.
#
# Generated by gnulib-tool.
# Reproduce by: gnulib-tool --import --dir=. --lib=libgnu --source-base=lib --m4-base=m4 --doc-base=doc --tests-base=tests --aux-dir=build-aux --avoid=close --avoid=dup --avoid=fchdir --avoid=fstat --avoid=malloc-posix --avoid=msvc-inval --avoid=msvc-nothrow --avoid=open --avoid=openat-die --avoid=opendir --avoid=raise --avoid=save-cwd --avoid=select --avoid=sigprocmask --avoid=stdarg --avoid=stdbool --avoid=threadlib --makefile-name=gnulib.mk --conditional-dependencies --no-libtool --macro-prefix=gl --no-vc-files alloca-opt binary-io byteswap c-ctype c-strcase careadlinkat close-stream count-one-bits count-trailing-zeros crypto/md5 crypto/sha1 crypto/sha256 crypto/sha512 dtoastr dtotimespec dup2 environ execinfo faccessat fcntl fcntl-h fdatasync fdopendir filemode fstatat fsync getloadavg getopt-gnu gettime gettimeofday intprops largefile lstat manywarnings memrchr mkostemp mktime pipe2 pselect pthread_sigmask putenv qacl readlink readlinkat sig2str socklen stat-time stdalign stddef stdio stpcpy strftime strtoimax strtoumax symlink sys_stat sys_time time time_r timer-time timespec-add timespec-sub unsetenv update-copyright utimens vla warnings


MOSTLYCLEANFILES += core *.stackdump

noinst_LIBRARIES += libgnu.a

libgnu_a_SOURCES =
libgnu_a_LIBADD = $(gl_LIBOBJS)
libgnu_a_DEPENDENCIES = $(gl_LIBOBJS)
EXTRA_libgnu_a_SOURCES =

## begin gnulib module absolute-header

# Use this preprocessor expression to decide whether #include_next works.
# Do not rely on a 'configure'-time test for this, since the expression
# might appear in an installed header, which is used by some other compiler.
HAVE_INCLUDE_NEXT = (__GNUC__ || 60000000 <= __DECC_VER)

## end   gnulib module absolute-header

## begin gnulib module alloca-opt

BUILT_SOURCES += $(ALLOCA_H)

# We need the following in order to create <alloca.h> when the system
# doesn't have one that works with the given compiler.
if GL_GENERATE_ALLOCA_H
alloca.h: alloca.in.h $(top_builddir)/config.status
	$(AM_V_GEN)rm -f $@-t $@ && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  cat $(srcdir)/alloca.in.h; \
	} > $@-t && \
	mv -f $@-t $@
else
alloca.h: $(top_builddir)/config.status
	rm -f $@
endif
MOSTLYCLEANFILES += alloca.h alloca.h-t

EXTRA_DIST += alloca.in.h

## end   gnulib module alloca-opt

## begin gnulib module binary-io

libgnu_a_SOURCES += binary-io.h binary-io.c

## end   gnulib module binary-io

## begin gnulib module byteswap

BUILT_SOURCES += $(BYTESWAP_H)

# We need the following in order to create <byteswap.h> when the system
# doesn't have one.
if GL_GENERATE_BYTESWAP_H
byteswap.h: byteswap.in.h $(top_builddir)/config.status
	$(AM_V_GEN)rm -f $@-t $@ && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  cat $(srcdir)/byteswap.in.h; \
	} > $@-t && \
	mv -f $@-t $@
else
byteswap.h: $(top_builddir)/config.status
	rm -f $@
endif
MOSTLYCLEANFILES += byteswap.h byteswap.h-t

EXTRA_DIST += byteswap.in.h

## end   gnulib module byteswap

## begin gnulib module c-ctype

libgnu_a_SOURCES += c-ctype.h c-ctype.c

## end   gnulib module c-ctype

## begin gnulib module c-strcase

libgnu_a_SOURCES += c-strcase.h c-strcasecmp.c c-strncasecmp.c

## end   gnulib module c-strcase

## begin gnulib module close-stream

libgnu_a_SOURCES += close-stream.c

EXTRA_DIST += close-stream.h

## end   gnulib module close-stream

## begin gnulib module count-one-bits

libgnu_a_SOURCES += count-one-bits.c

EXTRA_DIST += count-one-bits.h

## end   gnulib module count-one-bits

## begin gnulib module count-trailing-zeros

libgnu_a_SOURCES += count-trailing-zeros.c

EXTRA_DIST += count-trailing-zeros.h

## end   gnulib module count-trailing-zeros

## begin gnulib module crypto/md5

libgnu_a_SOURCES += md5.c

EXTRA_DIST += gl_openssl.h md5.h

## end   gnulib module crypto/md5

## begin gnulib module crypto/sha1

libgnu_a_SOURCES += sha1.c

EXTRA_DIST += gl_openssl.h sha1.h

## end   gnulib module crypto/sha1

## begin gnulib module crypto/sha256

libgnu_a_SOURCES += sha256.c

EXTRA_DIST += gl_openssl.h sha256.h

## end   gnulib module crypto/sha256

## begin gnulib module crypto/sha512

libgnu_a_SOURCES += sha512.c

EXTRA_DIST += gl_openssl.h sha512.h

## end   gnulib module crypto/sha512

## begin gnulib module dosname

if gl_GNULIB_ENABLED_dosname

endif
EXTRA_DIST += dosname.h

## end   gnulib module dosname

## begin gnulib module dtoastr

libgnu_a_SOURCES += dtoastr.c

EXTRA_DIST += ftoastr.c ftoastr.h

EXTRA_libgnu_a_SOURCES += ftoastr.c

## end   gnulib module dtoastr

## begin gnulib module dtotimespec

libgnu_a_SOURCES += dtotimespec.c

## end   gnulib module dtotimespec

## begin gnulib module dup2


EXTRA_DIST += dup2.c

EXTRA_libgnu_a_SOURCES += dup2.c

## end   gnulib module dup2

## begin gnulib module errno

BUILT_SOURCES += $(ERRNO_H)

# We need the following in order to create <errno.h> when the system
# doesn't have one that is POSIX compliant.
if GL_GENERATE_ERRNO_H
errno.h: errno.in.h $(top_builddir)/config.status
	$(AM_V_GEN)rm -f $@-t $@ && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|$(INCLUDE_NEXT)|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|@PRAGMA_SYSTEM_HEADER@|g' \
	      -e 's|@''PRAGMA_COLUMNS''@|@PRAGMA_COLUMNS@|g' \
	      -e 's|@''NEXT_ERRNO_H''@|$(NEXT_ERRNO_H)|g' \
	      -e 's|@''EMULTIHOP_HIDDEN''@|$(EMULTIHOP_HIDDEN)|g' \
	      -e 's|@''EMULTIHOP_VALUE''@|$(EMULTIHOP_VALUE)|g' \
	      -e 's|@''ENOLINK_HIDDEN''@|$(ENOLINK_HIDDEN)|g' \
	      -e 's|@''ENOLINK_VALUE''@|$(ENOLINK_VALUE)|g' \
	      -e 's|@''EOVERFLOW_HIDDEN''@|$(EOVERFLOW_HIDDEN)|g' \
	      -e 's|@''EOVERFLOW_VALUE''@|$(EOVERFLOW_VALUE)|g' \
	      < $(srcdir)/errno.in.h; \
	} > $@-t && \
	mv $@-t $@
else
errno.h: $(top_builddir)/config.status
	rm -f $@
endif
MOSTLYCLEANFILES += errno.h errno.h-t

EXTRA_DIST += errno.in.h

## end   gnulib module errno

## begin gnulib module euidaccess

if gl_GNULIB_ENABLED_euidaccess

endif
EXTRA_DIST += euidaccess.c

EXTRA_libgnu_a_SOURCES += euidaccess.c

## end   gnulib module euidaccess

## begin gnulib module execinfo

BUILT_SOURCES += $(EXECINFO_H)

# We need the following in order to create <execinfo.h> when the system
# doesn't have one that works.
if GL_GENERATE_EXECINFO_H
execinfo.h: execinfo.in.h $(top_builddir)/config.status
	$(AM_V_GEN)rm -f $@-t $@ && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  cat $(srcdir)/execinfo.in.h; \
	} > $@-t && \
	mv $@-t $@
else
execinfo.h: $(top_builddir)/config.status
	rm -f $@
endif
MOSTLYCLEANFILES += execinfo.h execinfo.h-t

EXTRA_DIST += execinfo.c execinfo.in.h

EXTRA_libgnu_a_SOURCES += execinfo.c

## end   gnulib module execinfo

## begin gnulib module faccessat


EXTRA_DIST += at-func.c faccessat.c

EXTRA_libgnu_a_SOURCES += at-func.c faccessat.c

## end   gnulib module faccessat

## begin gnulib module fdatasync


EXTRA_DIST += fdatasync.c

EXTRA_libgnu_a_SOURCES += fdatasync.c

## end   gnulib module fdatasync

## begin gnulib module fdopendir


EXTRA_DIST += fdopendir.c

EXTRA_libgnu_a_SOURCES += fdopendir.c

## end   gnulib module fdopendir

## begin gnulib module filemode

libgnu_a_SOURCES += filemode.c

EXTRA_DIST += filemode.h

## end   gnulib module filemode

## begin gnulib module fpending


EXTRA_DIST += fpending.c fpending.h

EXTRA_libgnu_a_SOURCES += fpending.c

## end   gnulib module fpending

## begin gnulib module fstatat


EXTRA_DIST += at-func.c fstatat.c

EXTRA_libgnu_a_SOURCES += at-func.c fstatat.c

## end   gnulib module fstatat

## begin gnulib module fsync


EXTRA_DIST += fsync.c

EXTRA_libgnu_a_SOURCES += fsync.c

## end   gnulib module fsync

## begin gnulib module getdtablesize

if gl_GNULIB_ENABLED_getdtablesize

endif
EXTRA_DIST += getdtablesize.c

EXTRA_libgnu_a_SOURCES += getdtablesize.c

## end   gnulib module getdtablesize

## begin gnulib module getgroups

if gl_GNULIB_ENABLED_getgroups

endif
EXTRA_DIST += getgroups.c

EXTRA_libgnu_a_SOURCES += getgroups.c

## end   gnulib module getgroups

## begin gnulib module getloadavg


EXTRA_DIST += getloadavg.c

EXTRA_libgnu_a_SOURCES += getloadavg.c

## end   gnulib module getloadavg

## begin gnulib module getopt-posix

BUILT_SOURCES += $(GETOPT_H)

# We need the following in order to create <getopt.h> when the system
# doesn't have one that works with the given compiler.
getopt.h: getopt.in.h $(top_builddir)/config.status $(ARG_NONNULL_H)
	$(AM_V_GEN)rm -f $@-t $@ && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''HAVE_GETOPT_H''@|$(HAVE_GETOPT_H)|g' \
	      -e 's|@''INCLUDE_NEXT''@|$(INCLUDE_NEXT)|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|@PRAGMA_SYSTEM_HEADER@|g' \
	      -e 's|@''PRAGMA_COLUMNS''@|@PRAGMA_COLUMNS@|g' \
	      -e 's|@''NEXT_GETOPT_H''@|$(NEXT_GETOPT_H)|g' \
	      -e '/definition of _GL_ARG_NONNULL/r $(ARG_NONNULL_H)' \
	      < $(srcdir)/getopt.in.h; \
	} > $@-t && \
	mv -f $@-t $@
MOSTLYCLEANFILES += getopt.h getopt.h-t

EXTRA_DIST += getopt.c getopt.in.h getopt1.c getopt_int.h

EXTRA_libgnu_a_SOURCES += getopt.c getopt1.c

## end   gnulib module getopt-posix

## begin gnulib module gettext-h

if gl_GNULIB_ENABLED_be453cec5eecf5731a274f2de7f2db36
libgnu_a_SOURCES += gettext.h

endif
## end   gnulib module gettext-h

## begin gnulib module gettime

libgnu_a_SOURCES += gettime.c

## end   gnulib module gettime

## begin gnulib module gettimeofday


EXTRA_DIST += gettimeofday.c

EXTRA_libgnu_a_SOURCES += gettimeofday.c

## end   gnulib module gettimeofday

## begin gnulib module group-member

if gl_GNULIB_ENABLED_a9786850e999ae65a836a6041e8e5ed1

endif
EXTRA_DIST += group-member.c

EXTRA_libgnu_a_SOURCES += group-member.c

## end   gnulib module group-member

## begin gnulib module intprops


EXTRA_DIST += intprops.h

## end   gnulib module intprops

## begin gnulib module lstat


EXTRA_DIST += lstat.c

EXTRA_libgnu_a_SOURCES += lstat.c

## end   gnulib module lstat

## begin gnulib module memrchr


EXTRA_DIST += memrchr.c

EXTRA_libgnu_a_SOURCES += memrchr.c

## end   gnulib module memrchr

## begin gnulib module mktime


EXTRA_DIST += mktime-internal.h mktime.c

EXTRA_libgnu_a_SOURCES += mktime.c

## end   gnulib module mktime

## begin gnulib module openat-h

if gl_GNULIB_ENABLED_03e0aaad4cb89ca757653bd367a6ccb7

endif
EXTRA_DIST += openat.h

## end   gnulib module openat-h

## begin gnulib module pathmax

if gl_GNULIB_ENABLED_pathmax

endif
EXTRA_DIST += pathmax.h

## end   gnulib module pathmax

## begin gnulib module pselect


EXTRA_DIST += pselect.c

EXTRA_libgnu_a_SOURCES += pselect.c

## end   gnulib module pselect

## begin gnulib module pthread_sigmask


EXTRA_DIST += pthread_sigmask.c

EXTRA_libgnu_a_SOURCES += pthread_sigmask.c

## end   gnulib module pthread_sigmask

## begin gnulib module putenv


EXTRA_DIST += putenv.c

EXTRA_libgnu_a_SOURCES += putenv.c

## end   gnulib module putenv

## begin gnulib module qacl

libgnu_a_SOURCES += acl-errno-valid.c file-has-acl.c qcopy-acl.c

EXTRA_DIST += acl-internal.h acl.h acl_entries.c

EXTRA_libgnu_a_SOURCES += acl_entries.c

## end   gnulib module qacl

## begin gnulib module readlink


EXTRA_DIST += readlink.c

EXTRA_libgnu_a_SOURCES += readlink.c

## end   gnulib module readlink

## begin gnulib module readlinkat


EXTRA_DIST += at-func.c readlinkat.c

EXTRA_libgnu_a_SOURCES += at-func.c readlinkat.c

## end   gnulib module readlinkat

## begin gnulib module root-uid

if gl_GNULIB_ENABLED_6099e9737f757db36c47fa9d9f02e88c

endif
EXTRA_DIST += root-uid.h

## end   gnulib module root-uid

## begin gnulib module sig2str


EXTRA_DIST += sig2str.c sig2str.h

EXTRA_libgnu_a_SOURCES += sig2str.c

## end   gnulib module sig2str

## begin gnulib module snippet/_Noreturn

# Because this Makefile snippet defines a variable used by other
# gnulib Makefile snippets, it must be present in all Makefile.am that
# need it. This is ensured by the applicability 'all' defined above.

_NORETURN_H=$(top_srcdir)/build-aux/snippet/_Noreturn.h

EXTRA_DIST += $(top_srcdir)/build-aux/snippet/_Noreturn.h

## end   gnulib module snippet/_Noreturn

## begin gnulib module snippet/arg-nonnull

# The BUILT_SOURCES created by this Makefile snippet are not used via #include
# statements but through direct file reference. Therefore this snippet must be
# present in all Makefile.am that need it. This is ensured by the applicability
# 'all' defined above.

BUILT_SOURCES += arg-nonnull.h
# The arg-nonnull.h that gets inserted into generated .h files is the same as
# build-aux/snippet/arg-nonnull.h, except that it has the copyright header cut
# off.
arg-nonnull.h: $(top_srcdir)/build-aux/snippet/arg-nonnull.h
	$(AM_V_GEN)rm -f $@-t $@ && \
	sed -n -e '/GL_ARG_NONNULL/,$$p' \
	  < $(top_srcdir)/build-aux/snippet/arg-nonnull.h \
	  > $@-t && \
	mv $@-t $@
MOSTLYCLEANFILES += arg-nonnull.h arg-nonnull.h-t

ARG_NONNULL_H=arg-nonnull.h

EXTRA_DIST += $(top_srcdir)/build-aux/snippet/arg-nonnull.h

## end   gnulib module snippet/arg-nonnull

## begin gnulib module snippet/c++defs

# The BUILT_SOURCES created by this Makefile snippet are not used via #include
# statements but through direct file reference. Therefore this snippet must be
# present in all Makefile.am that need it. This is ensured by the applicability
# 'all' defined above.

BUILT_SOURCES += c++defs.h
# The c++defs.h that gets inserted into generated .h files is the same as
# build-aux/snippet/c++defs.h, except that it has the copyright header cut off.
c++defs.h: $(top_srcdir)/build-aux/snippet/c++defs.h
	$(AM_V_GEN)rm -f $@-t $@ && \
	sed -n -e '/_GL_CXXDEFS/,$$p' \
	  < $(top_srcdir)/build-aux/snippet/c++defs.h \
	  > $@-t && \
	mv $@-t $@
MOSTLYCLEANFILES += c++defs.h c++defs.h-t

CXXDEFS_H=c++defs.h

EXTRA_DIST += $(top_srcdir)/build-aux/snippet/c++defs.h

## end   gnulib module snippet/c++defs

## begin gnulib module snippet/warn-on-use

BUILT_SOURCES += warn-on-use.h
# The warn-on-use.h that gets inserted into generated .h files is the same as
# build-aux/snippet/warn-on-use.h, except that it has the copyright header cut
# off.
warn-on-use.h: $(top_srcdir)/build-aux/snippet/warn-on-use.h
	$(AM_V_GEN)rm -f $@-t $@ && \
	sed -n -e '/^.ifndef/,$$p' \
	  < $(top_srcdir)/build-aux/snippet/warn-on-use.h \
	  > $@-t && \
	mv $@-t $@
MOSTLYCLEANFILES += warn-on-use.h warn-on-use.h-t

WARN_ON_USE_H=warn-on-use.h

EXTRA_DIST += $(top_srcdir)/build-aux/snippet/warn-on-use.h

## end   gnulib module snippet/warn-on-use

## begin gnulib module stat

if gl_GNULIB_ENABLED_stat

endif
EXTRA_DIST += stat.c

EXTRA_libgnu_a_SOURCES += stat.c

## end   gnulib module stat

## begin gnulib module stat-time

libgnu_a_SOURCES += stat-time.c

EXTRA_DIST += stat-time.h

## end   gnulib module stat-time

## begin gnulib module stdalign

BUILT_SOURCES += $(STDALIGN_H)

# We need the following in order to create <stdalign.h> when the system
# doesn't have one that works.
if GL_GENERATE_STDALIGN_H
stdalign.h: stdalign.in.h $(top_builddir)/config.status
	$(AM_V_GEN)rm -f $@-t $@ && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  cat $(srcdir)/stdalign.in.h; \
	} > $@-t && \
	mv $@-t $@
else
stdalign.h: $(top_builddir)/config.status
	rm -f $@
endif
MOSTLYCLEANFILES += stdalign.h stdalign.h-t

EXTRA_DIST += stdalign.in.h

## end   gnulib module stdalign

## begin gnulib module stddef

BUILT_SOURCES += $(STDDEF_H)

# We need the following in order to create <stddef.h> when the system
# doesn't have one that works with the given compiler.
if GL_GENERATE_STDDEF_H
stddef.h: stddef.in.h $(top_builddir)/config.status
	$(AM_V_GEN)rm -f $@-t $@ && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|$(INCLUDE_NEXT)|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|@PRAGMA_SYSTEM_HEADER@|g' \
	      -e 's|@''PRAGMA_COLUMNS''@|@PRAGMA_COLUMNS@|g' \
	      -e 's|@''NEXT_STDDEF_H''@|$(NEXT_STDDEF_H)|g' \
	      -e 's|@''HAVE_MAX_ALIGN_T''@|$(HAVE_MAX_ALIGN_T)|g' \
	      -e 's|@''HAVE_WCHAR_T''@|$(HAVE_WCHAR_T)|g' \
	      -e 's|@''REPLACE_NULL''@|$(REPLACE_NULL)|g' \
	      < $(srcdir)/stddef.in.h; \
	} > $@-t && \
	mv $@-t $@
else
stddef.h: $(top_builddir)/config.status
	rm -f $@
endif
MOSTLYCLEANFILES += stddef.h stddef.h-t

EXTRA_DIST += stddef.in.h

## end   gnulib module stddef

## begin gnulib module stdint

BUILT_SOURCES += $(STDINT_H)

# We need the following in order to create <stdint.h> when the system
# doesn't have one that works with the given compiler.
if GL_GENERATE_STDINT_H
stdint.h: stdint.in.h $(top_builddir)/config.status
	$(AM_V_GEN)rm -f $@-t $@ && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */'; \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's/@''HAVE_STDINT_H''@/$(HAVE_STDINT_H)/g' \
	      -e 's|@''INCLUDE_NEXT''@|$(INCLUDE_NEXT)|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|@PRAGMA_SYSTEM_HEADER@|g' \
	      -e 's|@''PRAGMA_COLUMNS''@|@PRAGMA_COLUMNS@|g' \
	      -e 's|@''NEXT_STDINT_H''@|$(NEXT_STDINT_H)|g' \
	      -e 's/@''HAVE_SYS_TYPES_H''@/$(HAVE_SYS_TYPES_H)/g' \
	      -e 's/@''HAVE_INTTYPES_H''@/$(HAVE_INTTYPES_H)/g' \
	      -e 's/@''HAVE_SYS_INTTYPES_H''@/$(HAVE_SYS_INTTYPES_H)/g' \
	      -e 's/@''HAVE_SYS_BITYPES_H''@/$(HAVE_SYS_BITYPES_H)/g' \
	      -e 's/@''HAVE_WCHAR_H''@/$(HAVE_WCHAR_H)/g' \
	      -e 's/@''HAVE_LONG_LONG_INT''@/$(HAVE_LONG_LONG_INT)/g' \
	      -e 's/@''HAVE_UNSIGNED_LONG_LONG_INT''@/$(HAVE_UNSIGNED_LONG_LONG_INT)/g' \
	      -e 's/@''APPLE_UNIVERSAL_BUILD''@/$(APPLE_UNIVERSAL_BUILD)/g' \
	      -e 's/@''BITSIZEOF_PTRDIFF_T''@/$(BITSIZEOF_PTRDIFF_T)/g' \
	      -e 's/@''PTRDIFF_T_SUFFIX''@/$(PTRDIFF_T_SUFFIX)/g' \
	      -e 's/@''BITSIZEOF_SIG_ATOMIC_T''@/$(BITSIZEOF_SIG_ATOMIC_T)/g' \
	      -e 's/@''HAVE_SIGNED_SIG_ATOMIC_T''@/$(HAVE_SIGNED_SIG_ATOMIC_T)/g' \
	      -e 's/@''SIG_ATOMIC_T_SUFFIX''@/$(SIG_ATOMIC_T_SUFFIX)/g' \
	      -e 's/@''BITSIZEOF_SIZE_T''@/$(BITSIZEOF_SIZE_T)/g' \
	      -e 's/@''SIZE_T_SUFFIX''@/$(SIZE_T_SUFFIX)/g' \
	      -e 's/@''BITSIZEOF_WCHAR_T''@/$(BITSIZEOF_WCHAR_T)/g' \
	      -e 's/@''HAVE_SIGNED_WCHAR_T''@/$(HAVE_SIGNED_WCHAR_T)/g' \
	      -e 's/@''WCHAR_T_SUFFIX''@/$(WCHAR_T_SUFFIX)/g' \
	      -e 's/@''BITSIZEOF_WINT_T''@/$(BITSIZEOF_WINT_T)/g' \
	      -e 's/@''HAVE_SIGNED_WINT_T''@/$(HAVE_SIGNED_WINT_T)/g' \
	      -e 's/@''WINT_T_SUFFIX''@/$(WINT_T_SUFFIX)/g' \
	      < $(srcdir)/stdint.in.h; \
	} > $@-t && \
	mv $@-t $@
else
stdint.h: $(top_builddir)/config.status
	rm -f $@
endif
MOSTLYCLEANFILES += stdint.h stdint.h-t

EXTRA_DIST += stdint.in.h

## end   gnulib module stdint

## begin gnulib module stpcpy


EXTRA_DIST += stpcpy.c

EXTRA_libgnu_a_SOURCES += stpcpy.c

## end   gnulib module stpcpy

## begin gnulib module strftime

libgnu_a_SOURCES += strftime.c

EXTRA_DIST += strftime.h

## end   gnulib module strftime

## begin gnulib module string

BUILT_SOURCES += string.h

# We need the following in order to create <string.h> when the system
# doesn't have one that works with the given compiler.
string.h: string.in.h $(top_builddir)/config.status $(CXXDEFS_H) $(ARG_NONNULL_H) $(WARN_ON_USE_H)
	$(AM_V_GEN)rm -f $@-t $@ && \
	{ echo '/* DO NOT EDIT! GENERATED AUTOMATICALLY! */' && \
	  sed -e 's|@''GUARD_PREFIX''@|GL|g' \
	      -e 's|@''INCLUDE_NEXT''@|$(INCLUDE_NEXT)|g' \
	      -e 's|@''PRAGMA_SYSTEM_HEADER''@|@PRAGMA_SYSTEM_HEADER@|g' \
	      -e 's|@''PRAGMA_COLUMNS''@|@PRAGMA_COLUMNS@|g' \
	      -e 's|@''NEXT_STRING_H''@|$(NEXT_STRING_H)|g' \
	      -e 's/@''GNULIB_FFSL''@/$(GNULIB_FFSL)/g' \
	      -e 's/@''GNULIB_FFSLL''@/$(GNULIB_FFSLL)/g' \
	      -e 's/@''GNULIB_MBSLEN''@/$(GNULIB_MBSLEN)/g' \
	      -e 's/@''GNULIB_MBSNLEN''@/$(GNULIB_MBSNLEN)/g' \
	      -e 's/@''GNULIB_MBSCHR''@/$(GNULIB_MBSCHR)/g' \
	      -e 's/@''GNULIB_MBSRCHR''@/$(GNULIB_MBSRCHR)/g' \
	      -e 's/@''GNULIB_MBSSTR''@/$(GNULIB_MBSSTR)/g' \
	      -e 's/@''GNULIB_MBSCASECMP''@/$(GNULIB_MBSCASECMP)/g' \
	      -e 's/@''GNULIB_MBSNCASECMP''@/$(GNULIB_MBSNCASECMP)/g' \
	      -e 's/@''GNULIB_MBSPCASECMP''@/$(GNULIB_MBSPCASECMP)/g' \
	      -e 's/@''GNULIB_MBSCASESTR''@/$(GNULIB_MBSCASESTR)/g' \
	      -e 's/@''GNULIB_MBSCSPN''@/$(GNULIB_MBSCSPN)/g' \
	      -e 's/@''GNULIB_MBSPBRK''@/$(GNULIB_MBSPBRK)/g' \
	      -e 's/@''GNULIB_MBSSPN''@/$(GNULIB_MBSSPN)/g' \
	      -e 's/@''GNULIB_MBSSEP''@/$(GNULIB_MBSSEP)/g' \
	      -e 's/@''GNULIB_MBSTOK_R''@/$(GNULIB_MBSTOK_R)/g' \
	      -e 's/@''GNULIB_MEMCHR''@/$(GNULIB_MEMCHR)/g' \
	      -e 's/@''GNULIB_MEMMEM''@/$(GNULIB_MEMMEM)/g' \
	      -e 's/@''GNULIB_MEMPCPY''@/$(GNULIB_MEMPCPY)/g' \
	      -e 's/@''GNULIB_MEMRCHR''@/$(GNULIB_MEMRCHR)/g' \
	      -e 's/@''GNULIB_RAWMEMCHR''@/$(GNULIB_RAWMEMCHR)/g' \
	      -e 's/@''GNULIB_STPCPY''@/$(GNULIB_STPCPY)/g' \
	      -e 's/@''GNULIB_STPNCPY''@/$(GNULIB_STPNCPY)/g' \
	      -e 's/@''GNULIB_STRCHRNUL''@/$(GNULIB_STRCHRNUL)/g' \
	      -e 's/@''GNULIB_STRDUP''@/$(GNULIB_STRDUP)/g' \
	      -e 's/@''GNULIB_STRNCAT''@/$(GNULIB_STRNCAT)/g' \
	      -e 's/@''GNULIB_STRNDUP''@/$(GNULIB_STRNDUP)/g' \
	      -e 's/@''GNULIB_STRNLEN''@/$(GNULIB_STRNLEN)/g' \
	      -e 's/@''GNULIB_STRPBRK''@/$(GNULIB_STRPBRK)/g' \
	      -e 's/@''GNULIB_STRSEP''@/$(GNULIB_STRSEP)/g' \
	      -e 's/@''GNULIB_STRSTR''@/$(GNULIB_STRSTR)/g' \
	      -e 's/@''GNULIB_STRCASESTR''@/$(GNULIB_STRCASESTR)/g' \
	      -e 's/@''GNULIB_STRTOK_R''@/$(GNULIB_STRTOK_R)/g' \
	      -e 's/@''GNULIB_STRERROR''@/$(GNULIB_STRERROR)/g' \
	      -e 's/@''GNULIB_STRERROR_R''@/$(GNULIB_STRERROR_R)/g' \
	      -e 's/@''GNULIB_STRSIGNAL''@/$(GNULIB_STRSIGNAL)/g' \
	      -e 's/@''GNULIB_STRVERSCMP''@/$(GNULIB_STRVERSCMP)/g' \
	      < $(srcdir)/string.in.h | \
	  sed -e 's|@''HAVE_FFSL''@|$(HAVE_FFSL)|g' \
	      -e 's|@''HAVE_FFSLL''@|$(HAVE_FFSLL)|g' \
	      -e 's|@''HAVE_MBSLEN''@|$(HAVE_MBSLEN)|g' \
	      -e 's|@''HAVE_MEMCHR''@|$(HAVE_MEMCHR)|g' \
	      -e 's|@''HAVE_DECL_MEMMEM''@|$(HAVE_DECL_MEMMEM)|g' \
	      -e 's|@''HAVE_MEMPCPY''@|$(HAVE_MEMPCPY)|g' \
	      -e 's|@''HAVE_DECL_MEMRCHR''@|$(HAVE_DECL_MEMRCHR)|g' \
	      -e 's|@''HAVE_RAWMEMCHR''@|$(HAVE_RAWMEMCHR)|g' \
	      -e 's|@''HAVE_STPCPY''@|$(HAVE_STPCPY)|g' \
	      -e 's|@''HAVE_STPNCPY''@|$(HAVE_STPNCPY)|g' \
	      -e 's|@''HAVE_STRCHRNUL''@|$(HAVE_STRCHRNUL)|g' \
	      -e 's|@''HAVE_DECL_STRDUP''@|$(HAVE_DECL_STRDUP)|g' \
	      -e 's|@''HAVE_DECL_STRNDUP''@|$(HAVE_DECL_STRNDUP)|g' \
	      -e 's|@''HAVE_DECL_STRNLEN''@|$(HAVE_DECL_STRNLEN)|g' \
	      -e 's|@''HAVE_STRPBRK''@|$(HAVE_STRPBRK)|g' \
	      -e 's|@''HAVE_STRSEP''@|$(HAVE_STRSEP)|g' \
	      -e 's|@''HAVE_STRCASESTR''@|$(HAVE_STRCASESTR)|g' \
	      -e 's|@''HAVE_DECL_STRTOK_R''@|$(HAVE_DECL_STRTOK_R)|g' \
	      -e 's|@''HAVE_DECL_STRERROR_R''@|$(HAVE_DECL_STRERROR_R)|g' \
	      -e 's|@''HAVE_DECL_STRSIGNAL''@|$(HAVE_DECL_STRSIGNAL)|g' \
	      -e 's|@''HAVE_STRVERSCMP''@|$(HAVE_STRVERSCMP)|g' \
	      -e 's|@''REPLACE_STPNCPY''@|$(REPLACE_STPNCPY)|g' \
	      -e 's|@''REPLACE_MEMCHR''@|$(REPLACE_MEMCHR)|g' \
	      -e 's|@''REPLACE_MEMMEM''@|$(REPLACE_MEMMEM)|g' \
	      -e 's|@''REPLACE_STRCASESTR''@|$(REPLACE_STRCASESTR)|g' \
	      -e 's|@''REPLACE_STRCHRNUL''@|$(REPLACE_STRCHRNUL)|g' \
	      -e 's|@''REPLACE_STRDUP''@|$(REPLACE_STRDUP)|g' \
	      -e 's|@''REPLACE_STRSTR''@|$(REPLACE_STRSTR)|g' \
	      -e 's|@''REPLACE_STRERROR''@|$(REPLACE_STRERROR)|g' \
	      -e 's|@''REPLACE_STRERROR_R''@|$(REPLACE_STRERROR_R)|g' \
	      -e 's|@''REPLACE_STRNCAT''@|$(REPLACE_STRNCAT)|g' \
	      -e 's|@''REPLACE_STRNDUP''@|$(REPLACE_STRNDUP)|g' \
	      -e 's|@''REPLACE_STRNLEN''@|$(REPLACE_STRNLEN)|g' \
	      -e 's|@''REPLACE_STRSIGNAL''@|$(REPLACE_STRSIGNAL)|g' \
	      -e 's|@''REPLACE_STRTOK_R''@|$(REPLACE_STRTOK_R)|g' \
	      -e 's|@''UNDEFINE_STRTOK_R''@|$(UNDEFINE_STRTOK_R)|g' \
	      -e '/definitions of _GL_FUNCDECL_RPL/r $(CXXDEFS_H)' \
	      -e '/definition of _GL_ARG_NONNULL/r $(ARG_NONNULL_H)' \
	      -e '/definition of _GL_WARN_ON_USE/r $(WARN_ON_USE_H)'; \
	      < $(srcdir)/string.in.h; \
	} > $@-t && \
	mv $@-t $@
MOSTLYCLEANFILES += string.h string.h-t

EXTRA_DIST += string.in.h

## end   gnulib module string

## begin gnulib module strtoimax


EXTRA_DIST += strtoimax.c

EXTRA_libgnu_a_SOURCES += strtoimax.c

## end   gnulib module strtoimax

## begin gnulib module strtoll

if gl_GNULIB_ENABLED_strtoll

endif
EXTRA_DIST += strtol.c strtoll.c

EXTRA_libgnu_a_SOURCES += strtol.c strtoll.c

## end   gnulib module strtoll

## begin gnulib module strtoull

if gl_GNULIB_ENABLED_strtoull

endif
EXTRA_DIST += strtol.c strtoul.c strtoull.c

EXTRA_libgnu_a_SOURCES += strtol.c strtoul.c strtoull.c

## end   gnulib module strtoull

## begin gnulib module strtoumax


EXTRA_DIST += strtoimax.c strtoumax.c

EXTRA_libgnu_a_SOURCES += strtoimax.c strtoumax.c

## end   gnulib module strtoumax

## begin gnulib module symlink


EXTRA_DIST += symlink.c

EXTRA_libgnu_a_SOURCES += symlink.c

## end   gnulib module symlink

## begin gnulib module time_r


EXTRA_DIST += time_r.c

EXTRA_libgnu_a_SOURCES += time_r.c

## end   gnulib module time_r

## begin gnulib module timespec

libgnu_a_SOURCES += timespec.c

EXTRA_DIST += timespec.h

## end   gnulib module timespec

## begin gnulib module timespec-add

libgnu_a_SOURCES += timespec-add.c

## end   gnulib module timespec-add

## begin gnulib module timespec-sub

libgnu_a_SOURCES += timespec-sub.c

## end   gnulib module timespec-sub

## begin gnulib module u64

libgnu_a_SOURCES += u64.c

EXTRA_DIST += u64.h

## end   gnulib module u64

## begin gnulib module unsetenv


EXTRA_DIST += unsetenv.c

EXTRA_libgnu_a_SOURCES += unsetenv.c

## end   gnulib module unsetenv

## begin gnulib module update-copyright


EXTRA_DIST += $(top_srcdir)/build-aux/update-copyright

## end   gnulib module update-copyright

## begin gnulib module utimens

libgnu_a_SOURCES += utimens.c

EXTRA_DIST += utimens.h

## end   gnulib module utimens

## begin gnulib module verify

EXTRA_DIST += verify.h

## end   gnulib module verify

## begin gnulib module vla


EXTRA_DIST += vla.h

## end   gnulib module vla

## begin gnulib module xalloc-oversized

if gl_GNULIB_ENABLED_682e609604ccaac6be382e4ee3a4eaec

endif
EXTRA_DIST += xalloc-oversized.h

## end   gnulib module xalloc-oversized


mostlyclean-local: mostlyclean-generic
	@for dir in '' $(MOSTLYCLEANDIRS); do \
	  if test -n "$$dir" && test -d $$dir; then \
	    echo "rmdir $$dir"; rmdir $$dir; \
	  fi; \
	done; \
	:
