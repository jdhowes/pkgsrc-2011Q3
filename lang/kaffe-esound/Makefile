# $NetBSD: Makefile,v 1.9 2009/12/15 23:41:46 joerg Exp $
#

.include "../../lang/kaffe/Makefile.common"

PKGNAME=		${DISTNAME:S/kaffe/kaffe-esound/}
PKGREVISION=		1

COMMENT+=		(sound support through esound)

CONFIGURE_ARGS+=	--disable-native-awt
CONFIGURE_ARGS+=	--disable-gtk-peer
CONFIGURE_ARGS+=	--without-x
CONFIGURE_ARGS+=	--with-esd

BUILD_DIRS=		config
BUILD_DIRS+=		libraries/javalib
BUILD_DIRS+=		libraries/clib/sound/esd
INSTALL_DIRS=		libraries/clib/sound/esd

pre-build:
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${BUILD_MAKE_FLAGS} BUILD_ENVIRONMENT

.include "../../audio/esound/buildlink3.mk"
.include "../../lang/kaffe/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
