# $NetBSD: Makefile,v 1.22 2009/04/09 00:48:14 joerg Exp $
#

DISTNAME=	shlock-20080529
CATEGORIES=	pkgtools sysutils
MASTER_SITES=	# empty
DISTFILES=	# empty

MAINTAINER=	pkgsrc-users@NetBSD.org
#HOMEPAGE=
COMMENT=	Shell utility to perform dot-locking

PKG_DESTDIR_SUPPORT=	user-destdir
USE_BSD_MAKEFILE=	yes
MAKE_ENV+=		MKCATPAGES=no

INSTALLATION_DIRS+=	bin ${PKGMANDIR}/man1
PKGSRC_LOCKTYPE=	none	# avoid "bootstrapping problem"

do-extract:
	${CP} -R ${FILESDIR} ${WRKSRC}

.include "../../mk/bsd.pkg.mk"
