# $NetBSD: Makefile,v 1.4 2011/08/23 13:06:46 obache Exp $
#

GST_PLUGINS0.10_NAME=	pulse
GST_PLUGINS0.10_DIRS=	ext/pulse
GST_PLUGINS0.10_FLAGS=	pulse

PKGREVISION=	1

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../multimedia/gst-plugins0.10-good/Makefile.common"

.include "../../audio/pulseaudio/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
