# $NetBSD: Makefile,v 1.17 2011/02/28 14:52:43 wiz Exp $

DISTNAME=	asm.8051
PKGNAME=	as31-19900126
PKGREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.uu.net/usenet/comp.sources.misc/volume10/
EXTRACT_SUFX=	.Z

MAINTAINER=	pkgsrc-users@NetBSD.org
COMMENT=	8031/8051 assembler

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}
EXTRACT_CMD=	${GZCAT} ${DOWNLOADED_DISTFILE} | \
		${SED} '1,/^.! \/bin\/sh/d' | ${SH}
USE_TOOLS+=	yacc
MAKE_FILE=	makefile
BUILD_TARGET=	as31

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/as31 ${DESTDIR}${PREFIX}/bin/as31
	${INSTALL_DATA} ${WRKSRC}/as31.man \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/as31.1

.include "../../mk/bsd.pkg.mk"
