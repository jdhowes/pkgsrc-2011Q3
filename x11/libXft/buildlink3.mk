# $NetBSD: buildlink3.mk,v 1.6 2009/03/20 19:25:45 joerg Exp $

.include "../../mk/bsd.fast.prefs.mk"

.if ${X11_TYPE} != "modular"
.include "../../fonts/Xft2/buildlink3.mk"
.else

BUILDLINK_TREE+=	libXft

.if !defined(LIBXFT_BUILDLINK3_MK)
LIBXFT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libXft+=	libXft>=2.1.10
BUILDLINK_PKGSRCDIR.libXft?=	../../x11/libXft

.include "../../fonts/fontconfig/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../x11/libXrender/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/xproto/buildlink3.mk"
.endif # LIBXFT_BUILDLINK3_MK

BUILDLINK_TREE+=	-libXft

.endif
