# $NetBSD: Makefile,v 1.26 2008/09/22 00:08:55 ahoka Exp $

DISTNAME=	ffcall-1.10
PKGREVISION=	2
CATEGORIES=	devel
MASTER_SITES=	http://www.haible.de/bruno/gnu/ \
		${MASTER_SITE_GNUSTEP:=libs/}

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://www.haible.de/bruno/packages-ffcall.html
COMMENT=	Foreign function call libraries

PKG_DESTDIR_SUPPORT=	user-destdir
MAKE_JOBS_SAFE=			no

# the file ${WRKSRC}/avcall/avcall-${MACHINE_ARCH}.c needs to
# be added for additional port support.
ONLY_FOR_PLATFORM=	*-*-alpha *-*-arm *-*-convex *-*-hppa *-*-i386 \
			*-*-ia64 *-*-m68k *-*-m88k *-*-mips *-*-mipsel \
			*-*-mipseb *-*-mips64 *-*-mipsn32 \
			*-*-powerpc *-*-rs6000 \
			*-*-s390 *-*-sparc *-*-sparc64 \
			*-*-x86_64

USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes

CONFIGURE_ARGS+=	--enable-shared

MAKE_FLAGS+=		htmldir=${PREFIX}/share/doc/ffcall

post-patch:
	${CP} ${FILESDIR}/tramp-rs6000-netbsd.s ${WRKSRC}/callback/trampoline_r
	${CP} ${FILESDIR}/vacall-rs6000-netbsd.s ${WRKSRC}/callback/vacall_r

TEST_TARGET=		check

.include "../../mk/bsd.pkg.mk"
