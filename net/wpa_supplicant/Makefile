# $NetBSD: Makefile,v 1.9 2011/09/03 10:33:12 shattered Exp $
#

DISTNAME=	wpa_supplicant-0.7.3
CATEGORIES=	net
MASTER_SITES=	http://hostap.epitest.fi/releases/

MAINTAINER=	reed@reedmedia.net
HOMEPAGE=	http://hostap.epitest.fi/wpa_supplicant/
COMMENT=	Wireless connection client daemon for WPA, WPA2, and WEP

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	c
USE_TOOLS+=	gmake

BUILD_DIRS=	wpa_supplicant

INSTALLATION_DIRS=	sbin ${PKGMANDIR}/man5 ${PKGMANDIR}/man8

PKG_OPTIONS_VAR=	PKG_OPTIONS.wpa_supplicant
PKG_SUPPORTED_OPTIONS=	dbus
PKG_SUGGESTED_OPTIONS=	dbus

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mdbus)
USE_TOOLS+=	pkg-config
.endif

.if ${OPSYS} == "NetBSD" || ${OPSYS} == "FreeBSD"
CPPFLAGS+=	-DNEW_FREEBSD_MLME_ASSOC
.endif

post-extract:
	${CP} ${FILESDIR}/defconfig ${WRKSRC}/wpa_supplicant/.config
	[ ! -e ${FILESDIR}/defconfig.${OPSYS} ] || \
		${CAT} ${FILESDIR}/defconfig.${OPSYS} >> ${WRKSRC}/wpa_supplicant/.config
.if !empty(PKG_OPTIONS:Mdbus)
	${ECHO} CONFIG_CTRL_IFACE_DBUS=y >> ${WRKSRC}/wpa_supplicant/.config
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wpa_supplicant/wpa_cli \
		${DESTDIR}${PREFIX}/sbin/
	${INSTALL_PROGRAM} ${WRKSRC}/wpa_supplicant/wpa_passphrase \
		${DESTDIR}${PREFIX}/sbin/
	${INSTALL_PROGRAM} ${WRKSRC}/wpa_supplicant/wpa_supplicant \
		${DESTDIR}${PREFIX}/sbin/
	${INSTALL_MAN} ${WRKSRC}/wpa_supplicant/doc/docbook/wpa_supplicant.conf.5 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man5/
	${INSTALL_MAN} ${WRKSRC}/wpa_supplicant/doc/docbook/wpa_cli.8 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man8/
	${INSTALL_MAN} ${WRKSRC}/wpa_supplicant/doc/docbook/wpa_passphrase.8 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man8/
	${INSTALL_MAN} ${WRKSRC}/wpa_supplicant/doc/docbook/wpa_supplicant.8 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man8/

.if !empty(PKG_OPTIONS:Mdbus)
.include "../../sysutils/dbus/buildlink3.mk"
.endif

.include "../../net/libpcap/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
