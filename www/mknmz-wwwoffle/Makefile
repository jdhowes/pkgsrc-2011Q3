# $NetBSD: Makefile,v 1.9 2009/09/02 08:34:16 wiz Exp $
#

DISTNAME=	mknmz-wwwoffle-0.7.0
PKGREVISION=	2
CATEGORIES=	japanese www
MASTER_SITES=	http://www.naney.org/comp/distrib/mknmz-wwwoffle/archive/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.naney.org/comp/distrib/mknmz-wwwoffle/index.html
COMMENT=	Full text indexing and searching system for wwwoffle's cache directory

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	namazu>=2.0.5:../../textproc/namazu
DEPENDS+=	wwwoffle>=2.6:../../www/wwwoffle

USE_TOOLS+=	perl:run
GNU_CONFIGURE=	yes
CONFIG_ARGS+=	--prefix=${PREFIX}/share/namazu

.include "../../mk/bsd.pkg.mk"
