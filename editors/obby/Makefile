# $NetBSD: Makefile,v 1.6 2011/04/22 13:42:44 obache Exp $
#

DISTNAME=	obby-0.4.7
PKGREVISION=	1
CATEGORIES=	editors
MASTER_SITES=	http://releases.0x539.de/obby/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gobby.0x539.de/
COMMENT=	Library for distributed editing

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config
USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++

PKGCONFIG_OVERRIDE+=	obby-0.4.pc.in

.include "../../devel/libsigc++/buildlink3.mk"
.include "../../net/net6/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
