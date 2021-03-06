$NetBSD: patch-ipc_chromium_src_base_third__party_nspr_prcpucfg.h,v 1.1 2011/07/11 12:46:14 tnn Exp $

--- ipc/chromium/src/base/third_party/nspr/prcpucfg.h.orig	2011-06-15 21:57:27.000000000 +0000
+++ ipc/chromium/src/base/third_party/nspr/prcpucfg.h
@@ -34,7 +34,7 @@
 #include "base/third_party/nspr/prcpucfg_win.h"
 #elif defined(__APPLE__)
 #include "base/third_party/nspr/prcpucfg_mac.h"
-#elif defined(__linux__) || defined(ANDROID)
+#elif defined(__linux__) || defined(ANDROID) || defined(__NetBSD__) || defined(__DragonFly__)
 #include "base/third_party/nspr/prcpucfg_linux.h"
 #else
 #error Provide a prcpucfg.h appropriate for your platform
