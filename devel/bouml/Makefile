# $NetBSD: Makefile,v 1.11 2011/01/13 13:37:20 wiz Exp $
#

DISTNAME=		bouml_${BOUMLVERSION}
PKGNAME=		bouml-${BOUMLVERSION}
PKGREVISION=		3
CATEGORIES=		devel
MASTER_SITES=		http://bouml.free.fr/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://bouml.free.fr/
COMMENT=		UML modeling tool, generates C++, JAVA, and IDL
LICENSE=                gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

BOUMLVERSION=		4.16.4

USE_LIBTOOL=		YES
USE_TOOLS+=		gmake pax
USE_LANGUAGES=		c++
BUILD_TARGET=		compile

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/qt3-tools/buildlink3.mk"
.include "../../x11/qt3-libs/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
