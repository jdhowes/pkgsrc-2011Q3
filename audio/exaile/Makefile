# $NetBSD: Makefile,v 1.24 2011/04/22 13:42:52 obache Exp $
#

DISTNAME=	exaile_0.2.14
PKGNAME=	exaile-0.2.14
PKGREVISION=	12
CATEGORIES=	audio
MASTER_SITES=	http://www.exaile.org/files/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.exaile.org/
COMMENT=	Music player

WRKSRC=		${WRKDIR}/exaile-0.2.14
PKG_DESTDIR_SUPPORT=	user-destdir

USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		pkg-config gmake intltool msgfmt

PYTHON_PATCH_SCRIPTS=	exaile.py
MAKE_ENV+=	PYTHONBIN=${PYTHONBIN}
MAKE_FLAGS+=	PKGLOCALEDIR=${PKGLOCALEDIR}

.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../lang/python/application.mk"
.include "../../x11/py-gtk2/buildlink3.mk"
.include "../../sysutils/py-dbus/buildlink3.mk"
.include "../../audio/py-mutagen/buildlink3.mk"
.include "../../multimedia/py-gstreamer0.10/buildlink3.mk"
.include "../../textproc/py-elementtree/buildlink3.mk"
.include "../../databases/py-sqlite2/buildlink3.mk"
.include "../../sysutils/py-notify/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
