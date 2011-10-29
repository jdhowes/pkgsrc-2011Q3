# $NetBSD: buildlink3.mk,v 1.6 2011/04/22 13:42:15 obache Exp $

BUILDLINK_TREE+=	libxfce4menu

.if !defined(LIBXFCE4MENU_BUILDLINK3_MK)
LIBXFCE4MENU_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libxfce4menu+=	libxfce4menu>=4.6.0
BUILDLINK_ABI_DEPENDS.libxfce4menu?=	libxfce4menu>=4.6.1nb4
BUILDLINK_PKGSRCDIR.libxfce4menu?=	../../x11/libxfce4menu

.include "../../devel/glib2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libxfce4util/buildlink3.mk"
.endif	# LIBXFCE4MENU_BUILDLINK3_MK

BUILDLINK_TREE+=	-libxfce4menu
