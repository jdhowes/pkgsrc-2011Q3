# $NetBSD: Makefile,v 1.4 2011/02/28 14:52:37 wiz Exp $
#

PKGNAME=		akode-plugins-alsa-${AKODE_VERSION}
PKGREVISION=		1

MAINTAINER=		pkgsrc-users@NetBSD.org
COMMENT=		Alsa output plugin for aKode framework
LICENSE=		gnu-lgpl-v2

.include "../../audio/akode/Makefile.common"

DISTINFO_FILE=		${.CURDIR}/../../audio/akode/distinfo
PATCHDIR=		${.CURDIR}/../../audio/akode/patches

PKG_DESTDIR_SUPPORT=	user-destdir

CONFIGURE_ARGS+=	--with-alsa

do-install:
	cd ${WRKSRC}/akode/plugins/alsa_sink && ${SETENV} ${MAKE_ENV} ${MAKE} \
		prefix=${DESTDIR}${PREFIX} install

.include "../../audio/alsa-lib/buildlink3.mk"
.include "../../devel/libltdl/buildlink3.mk"
.include "../../audio/akode/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
