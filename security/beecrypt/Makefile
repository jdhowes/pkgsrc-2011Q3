# $NetBSD: Makefile,v 1.10 2008/06/12 02:14:44 joerg Exp $

DISTNAME=	beecrypt-4.1.1
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=beecrypt/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.virtualunlimited.com/products/beecrypt/
COMMENT=	Multipurpose cryptographic library

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		YES
USE_LANGUAGES=		c c++
USE_LIBTOOL=		YES

CONFIGURE_ARGS+=	--without-javaglue

.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
