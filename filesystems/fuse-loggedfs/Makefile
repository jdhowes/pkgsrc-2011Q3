# $NetBSD: Makefile,v 1.3 2008/03/03 19:31:31 jlam Exp $
#

DISTNAME=	loggedfs-0.4
PKGNAME=	fuse-${DISTNAME}
CATEGORIES=	filesystems
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=loggedfs/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	${MASTER_SITE_SOURCEFORGE:=loggedfs/}
COMMENT=	FUSE file system which logs all operations

PKG_DESTDIR_SUPPORT=	user-destdir

.if exists(/usr/include/sys/statvfs.h)
CPPFLAGS+=	-DHAVE_SYS_STATVFS_H
.endif

.if exists(/usr/include/sys/xattr.h)
CPPFLAGS+=	-DHAVE_SETXATTR
.endif

USE_LANGUAGES+=		c++
INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/loggedfs ${DESTDIR}${PREFIX}/bin/loggedfs
	${INSTALL_MAN} ${WRKSRC}/loggedfs.1 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/loggedfs.1

.include "../../devel/librlog/buildlink3.mk"
.include "../../devel/pcre/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"

.include "../../mk/fuse.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
