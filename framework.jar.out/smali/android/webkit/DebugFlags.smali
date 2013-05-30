.class Landroid/webkit/DebugFlags;
.super Ljava/lang/Object;
.source "DebugFlags.java"


# static fields
.field public static final BROWSER_FRAME:Z = true

.field public static final CACHE_MANAGER:Z = false

.field public static final CALLBACK_PROXY:Z = true

.field public static CHANNEL_SCROLL_ENABLE:Z = false

.field public static final COOKIE_MANAGER:Z = false

.field public static final COOKIE_SYNC_MANAGER:Z = false

.field public static ENABLE_SAMSUNG_SELECTION:Z = false

.field public static ENABLE_SCROLL_PERFORMANCE_PATCH:Z = false

.field public static final FRAME_LOADER:Z = false

.field public static final J_WEB_CORE_JAVA_BRIDGE:Z = false

.field public static final LOAD_LISTENER:Z = false

.field public static final MEASURE_PAGE_SWAP_FPS:Z = false

.field public static final NETWORK:Z = false

.field public static final SSL_ERROR_HANDLER:Z = false

.field public static final STREAM_LOADER:Z = false

.field public static final URL_UTIL:Z = false

.field public static final WEBSETTINGS_WEBKIT:Z = true

.field public static final WEB_BACK_FORWARD_LIST:Z

.field public static final WEB_SETTINGS:Z

.field public static final WEB_SYNC_MANAGER:Z

.field public static WEB_TOUCH_LOG:Z

.field public static final WEB_VIEW:Z

.field public static final WEB_VIEW_CORE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    sput-boolean v2, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    .line 57
    const-string v0, "1"

    const-string v3, "debug.browser.channelscroll"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/webkit/DebugFlags;->CHANNEL_SCROLL_ENABLE:Z

    .line 58
    const-string v0, "1"

    const-string v3, "debug.browser.samsungselection"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Landroid/webkit/DebugFlags;->ENABLE_SAMSUNG_SELECTION:Z

    .line 59
    const-string v0, "1"

    const-string v3, "debug.browser.scrollperformance"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    sput-boolean v1, Landroid/webkit/DebugFlags;->ENABLE_SCROLL_PERFORMANCE_PATCH:Z

    return-void

    :cond_0
    move v0, v2

    .line 57
    goto :goto_0

    :cond_1
    move v0, v2

    .line 58
    goto :goto_1

    :cond_2
    move v1, v2

    .line 59
    goto :goto_2
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
