# $NetBSD: buildlink3.mk,v 1.19 2011/04/22 13:42:42 obache Exp $

BUILDLINK_TREE+=	gnuradio-wxgui

.if !defined(GNURADIO_WXGUI_BUILDLINK3_MK)
GNURADIO_WXGUI_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gnuradio-wxgui+=	gnuradio-wxgui>=3.0.4
BUILDLINK_ABI_DEPENDS.gnuradio-wxgui?=	gnuradio-wxgui>=3.3.0nb3
BUILDLINK_PKGSRCDIR.gnuradio-wxgui?=	../../ham/gnuradio-wxgui

.include "../../ham/gnuradio-core/buildlink3.mk"
.include "../../x11/py-wxWidgets/buildlink3.mk"
.endif # GNURADIO_WXGUI_BUILDLINK3_MK

BUILDLINK_TREE+=	-gnuradio-wxgui
