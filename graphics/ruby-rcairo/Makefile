# $NetBSD: Makefile,v 1.22 2011/02/21 16:01:18 taca Exp $

DISTNAME=		rcairo-1.10.0
PKGNAME=		${RUBY_PKGPREFIX}-${DISTNAME}
PKGREVISION=		3
CATEGORIES=		graphics
MASTER_SITES=		http://cairographics.org/releases/

MAINTAINER=		obache@NetBSD.org
HOMEPAGE=		http://cairographics.org/rcairo/
COMMENT=		Ruby bindings for cairo
LICENSE=		ruby-license OR gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		pkg-config

USE_RUBY_EXTCONF=	yes

#do-test:
#	${RUN} cd ${WRKSRC}; \
#	${SETENV} ${TEST_ENV} ${RUBY} test/run-test.rb

BUILDLINK_API_DEPENDS.cairo+=	cairo>=1.2.0
.include "../../graphics/cairo/buildlink3.mk"
.include "../../lang/ruby/modules.mk"
.include "../../devel/ruby-pkg-config/tool.mk"
.include "../../mk/bsd.pkg.mk"
