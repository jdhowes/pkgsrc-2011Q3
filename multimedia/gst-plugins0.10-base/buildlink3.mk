# $NetBSD: buildlink3.mk,v 1.9 2011/04/24 15:31:09 obache Exp $

BUILDLINK_TREE+=	gst-plugins0.10-base

.if !defined(GST_PLUGINS0.10_BASE_BUILDLINK3_MK)
GST_PLUGINS0.10_BASE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gst-plugins0.10-base+=	gst-plugins0.10-base>=0.10.1
BUILDLINK_ABI_DEPENDS.gst-plugins0.10-base?=	gst-plugins0.10-base>=0.10.32nb1
BUILDLINK_PKGSRCDIR.gst-plugins0.10-base?=	../../multimedia/gst-plugins0.10-base

.include "../../multimedia/gstreamer0.10/buildlink3.mk"
.endif # GST_PLUGINS0.10_BASE_BUILDLINK3_MK

BUILDLINK_TREE+=	-gst-plugins0.10-base
