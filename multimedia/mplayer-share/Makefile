# $NetBSD: Makefile,v 1.22 2011/08/23 13:06:51 obache Exp $

PKG_DESTDIR_SUPPORT=	user-destdir

.include "Makefile.common"

PKGNAME=	mplayer-share-${MPLAYER_VERSION}
PKGREVISION=	3
COMMENT=	Documentation used by mplayer and gmplayer

DEPENDS+=	mplayer-fonts-[0-9]*:../../fonts/mplayer-fonts

USE_TOOLS+=	pax

NO_BUILD=	YES
NO_CONFIGURE=	YES

INSTALLATION_DIRS=	${PKGMANDIR}/man1 share/mplayer/DOCS

do-install:
	${INSTALL_MAN} ${WRKSRC}/DOCS/man/en/mplayer.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_DATA} ${WRKSRC}/etc/codecs.conf ${DESTDIR}${PREFIX}/share/mplayer
	${INSTALL_DATA} ${WRKSRC}/etc/input.conf ${DESTDIR}${PREFIX}/share/mplayer
	(cd ${WRKSRC}/DOCS && \
		pax -rwpppm * ${DESTDIR}${PREFIX}/share/mplayer/DOCS); \
	${FIND} ${DESTDIR}${PREFIX}/share/mplayer/DOCS -type d -print | \
		${XARGS} ${CHMOD} ${PKGDIRMODE}
	${FIND} ${DESTDIR}${PREFIX}/share/mplayer/DOCS -type f -print | \
		${XARGS} ${CHMOD} ${SHAREMODE}

.include "../../mk/bsd.pkg.mk"
