# $NetBSD: Makefile,v 1.1.1.1 2011/09/03 22:15:51 mjl Exp $
#

DISTNAME=	pgbouncer-${VERSION}
CATEGORIES=	databases
MASTER_SITES=	http://pgfoundry.org/frs/download.php/3085/
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc@NetBSD.org
HOMEPAGE=	http://wiki.postgresql.org/wiki/PgBouncer
COMMENT=	Lightweight connection pooler for PostgreSQL
LICENSE=	original-bsd

PKG_DESTDIR_SUPPORT=	user-destdir

VERSION=	1.4.2
USE_LANGUAGES=	c
USE_TOOLS=	gmake
GNU_CONFIGURE=	yes

CONFIGURE_ARGS+=        --with-libevent=${BUILDLINK_PREFIX.libevent}

EGDIR=                  ${PREFIX}/share/examples/${PKGBASE}
CONF_FILES=             ${EGDIR}/pgbouncer.ini ${PKG_SYSCONFDIR}/pgbouncer.ini \
			${EGDIR}/pgbouncer.userlist ${PKG_SYSCONFDIR}/pgbouncer.userlist

RCD_SCRIPTS+=		pgbouncer

INSTALLATION_DIRS=      bin ${PKGMANDIR}/man1 ${PKGMANDIR}/man5 ${EGDIR}

PGUSER?=                pgsql
PGGROUP?=               pgsql
PKG_GROUPS=     	${PGGROUP}
PKG_USERS=      	${PGUSER}:${PGGROUP}

BUILD_DEFS+=		PGUSER PGGROUP
FILES_SUBST+=           PGUSER=${PGUSER}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pgbouncer ${DESTDIR}${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/doc/pgbouncer.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/
	${INSTALL_MAN} ${WRKSRC}/doc/pgbouncer.5 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man5/
	${INSTALL_DATA} ${WRKSRC}/etc/pgbouncer.ini ${DESTDIR}${EGDIR}
	${INSTALL_DATA} ${WRKSRC}/etc/userlist.txt ${DESTDIR}${EGDIR}/pgbouncer.userlist

BUILDLINK_API_DEPENDS.libevent+= libevent>=2.0
.include "../../devel/libevent/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
