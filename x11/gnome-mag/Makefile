# $NetBSD: Makefile,v 1.61 2011/04/22 13:41:56 obache Exp $
#

DISTNAME=		gnome-mag-0.16.1
PKGREVISION=		5
CATEGORIES=		x11 gnome
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-mag/0.16/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.gnome.org/
COMMENT=		GNOME screen magnifier
LICENSE=		gnu-lgpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		gmake intltool msgfmt pkg-config
USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes

PKGCONFIG_OVERRIDE+=	gnome-mag-1.0.pc.in

SUBST_CLASSES+=		doxy
SUBST_STAGE.doxy=	pre-configure
SUBST_MESSAGE.doxy=	disable doxygen docs
SUBST_FILES.doxy=	docs/Makefile.in
SUBST_SED.doxy=		-e 's,SUBDIRS = reference,SUBDIRS =,'

BUILDLINK_DEPMETHOD.libXt?=	build

.include "../../devel/GConf/buildlink3.mk"
.include "../../devel/at-spi/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libbonobo/buildlink3.mk"
.include "../../devel/popt/buildlink3.mk"
.include "../../net/ORBit2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../x11/libXdamage/buildlink3.mk"
.include "../../x11/libXcomposite/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
