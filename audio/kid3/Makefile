# $NetBSD: Makefile,v 1.23 2011/04/22 13:42:54 obache Exp $
#

DISTNAME=		kid3-1.6
PKGREVISION=		1
CATEGORIES=		kde audio
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=kid3/}

MAINTAINER=		shattered@NetBSD.org
HOMEPAGE=		http://kid3.sourceforge.net/
COMMENT=		ID3 tagger for KDE 3

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_LANGUAGES=		c c++
USE_TOOLS+=		msgfmt

CHECK_PORTABILITY_SKIP+=	make_qtonly.sh

.include "../../meta-pkgs/kde3/kde3.mk"
.include "../../audio/flac/buildlink3.mk"
.include "../../audio/id3lib/buildlink3.mk"
.include "../../audio/libtunepimp/buildlink3.mk"
.include "../../audio/taglib/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../multimedia/libmp4v2/buildlink3.mk"
.include "../../x11/kdelibs3/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
