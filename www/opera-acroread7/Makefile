# $NetBSD: Makefile,v 1.14 2011/10/02 14:31:14 wiz Exp $

DISTNAME=		opera-acroread7-1.0
PKGREVISION=		3

MAINTAINER=		pkgsrc-users@NetBSD.org
COMMENT=		Acrobat Reader 7 plugin for opera

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=		acroread7-7.[0-9]*:../../print/acroread7
CONFLICTS+=		opera-acroread-[0-9]*
CONFLICTS+=		opera-acroread3-[0-9]*
CONFLICTS+=		opera-acroread5-[0-9]*

ACROREAD=		Acrobat7
ACRO_SUBDIR=		Browser

.include "../../www/opera-acroread7/Makefile.common"
.include "../../mk/bsd.pkg.mk"
