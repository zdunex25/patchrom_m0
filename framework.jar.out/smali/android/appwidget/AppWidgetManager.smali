.class public Landroid/appwidget/AppWidgetManager;
.super Ljava/lang/Object;
.source "AppWidgetManager.java"


# static fields
.field public static final ACTION_APPWIDGET_BIND:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_BIND"

.field public static final ACTION_APPWIDGET_CONFIGURE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_CONFIGURE"

.field public static final ACTION_APPWIDGET_DELETED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DELETED"

.field public static final ACTION_APPWIDGET_DISABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DISABLED"

.field public static final ACTION_APPWIDGET_ENABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_ENABLED"

.field public static final ACTION_APPWIDGET_OPTIONS_CHANGED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

.field public static final ACTION_APPWIDGET_PICK:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_PICK"

.field public static final ACTION_APPWIDGET_UPDATE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE"

.field public static final ACTION_KEYGUARD_APPWIDGET_PICK:Ljava/lang/String; = "android.appwidget.action.KEYGUARD_APPWIDGET_PICK"

.field public static final EXTRA_APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field public static final EXTRA_APPWIDGET_IDS:Ljava/lang/String; = "appWidgetIds"

.field public static final EXTRA_APPWIDGET_OPTIONS:Ljava/lang/String; = "appWidgetOptions"

.field public static final EXTRA_APPWIDGET_PROVIDER:Ljava/lang/String; = "appWidgetProvider"

.field public static final EXTRA_CATEGORY_FILTER:Ljava/lang/String; = "categoryFilter"

.field public static final EXTRA_CUSTOM_EXTRAS:Ljava/lang/String; = "customExtras"

.field public static final EXTRA_CUSTOM_INFO:Ljava/lang/String; = "customInfo"

.field public static final EXTRA_CUSTOM_SORT:Ljava/lang/String; = "customSort"

.field public static final INVALID_APPWIDGET_ID:I = 0x0

.field public static final META_DATA_APPWIDGET_PROVIDER:Ljava/lang/String; = "android.appwidget.provider"

.field public static final OPTION_APPWIDGET_HOST_CATEGORY:Ljava/lang/String; = "appWidgetCategory"

.field public static final OPTION_APPWIDGET_MAX_HEIGHT:Ljava/lang/String; = "appWidgetMaxHeight"

.field public static final OPTION_APPWIDGET_MAX_WIDTH:Ljava/lang/String; = "appWidgetMaxWidth"

.field public static final OPTION_APPWIDGET_MIN_HEIGHT:Ljava/lang/String; = "appWidgetMinHeight"

.field public static final OPTION_APPWIDGET_MIN_WIDTH:Ljava/lang/String; = "appWidgetMinWidth"

.field static final TAG:Ljava/lang/String; = "AppWidgetManager"

.field static sManagerCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/appwidget/AppWidgetManager;",
            ">;>;"
        }
    .end annotation
.end field

.field static sService:Lcom/android/internal/appwidget/IAppWidgetService;


# instance fields
.field mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 307
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p1, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    .line 341
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 342
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;
    .locals 6
    .parameter "context"

    .prologue
    .line 320
    sget-object v4, Landroid/appwidget/AppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    monitor-enter v4

    .line 321
    :try_start_0
    sget-object v3, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v3, :cond_0

    .line 322
    const-string v3, "appwidget"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 323
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v3

    sput-object v3, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 326
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    sget-object v3, Landroid/appwidget/AppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 327
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/appwidget/AppWidgetManager;>;"
    const/4 v2, 0x0

    .line 328
    .local v2, result:Landroid/appwidget/AppWidgetManager;
    if-eqz v1, :cond_1

    .line 329
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #result:Landroid/appwidget/AppWidgetManager;
    check-cast v2, Landroid/appwidget/AppWidgetManager;

    .line 331
    .restart local v2       #result:Landroid/appwidget/AppWidgetManager;
    :cond_1
    if-nez v2, :cond_2

    .line 332
    new-instance v2, Landroid/appwidget/AppWidgetManager;

    .end local v2           #result:Landroid/appwidget/AppWidgetManager;
    invoke-direct {v2, p0}, Landroid/appwidget/AppWidgetManager;-><init>(Landroid/content/Context;)V

    .line 333
    .restart local v2       #result:Landroid/appwidget/AppWidgetManager;
    sget-object v3, Landroid/appwidget/AppWidgetManager;->sManagerCache:Ljava/util/WeakHashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p0, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_2
    monitor-exit v4

    return-object v2

    .line 336
    .end local v1           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/appwidget/AppWidgetManager;>;"
    .end local v2           #result:Landroid/appwidget/AppWidgetManager;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public bindAppWidgetId(ILandroid/content/ComponentName;)V
    .locals 3
    .parameter "appWidgetId"
    .parameter "provider"

    .prologue
    .line 620
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    return-void

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 3
    .parameter "appWidgetId"
    .parameter "provider"
    .parameter "options"

    .prologue
    .line 644
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    .locals 4
    .parameter "appWidgetId"
    .parameter "provider"

    .prologue
    .line 665
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 666
    const/4 v1, 0x0

    .line 669
    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, p2, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->bindAppWidgetIdIfAllowed(Ljava/lang/String;ILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 3
    .parameter "appWidgetId"
    .parameter "provider"
    .parameter "options"

    .prologue
    .line 695
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 696
    const/4 v1, 0x0

    .line 699
    :goto_0
    return v1

    :cond_0
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->bindAppWidgetIdIfAllowed(Ljava/lang/String;ILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;Landroid/os/UserHandle;)V
    .locals 3
    .parameter "appWidgetId"
    .parameter "intent"
    .parameter "connection"
    .parameter "userHandle"

    .prologue
    .line 759
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    return-void

    .line 762
    :catch_0
    move-exception v0

    .line 763
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .locals 3
    .parameter "provider"

    .prologue
    .line 797
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIds(Landroid/content/ComponentName;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 799
    :catch_0
    move-exception v0

    .line 800
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 4
    .parameter "appWidgetId"

    .prologue
    .line 587
    :try_start_0
    sget-object v2, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v2, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 588
    .local v1, info:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v1, :cond_0

    .line 590
    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 592
    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 594
    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 596
    iget v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :cond_0
    return-object v1

    .line 601
    .end local v1           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :catch_0
    move-exception v0

    .line 602
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "system server dead?"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getAppWidgetOptions(I)Landroid/os/Bundle;
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 405
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetOptions(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getInstalledProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 548
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledProviders(I)Ljava/util/List;
    .locals 6
    .parameter "categoryFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    :try_start_0
    sget-object v4, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v4, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getInstalledProviders(I)Ljava/util/List;

    move-result-object v3

    .line 561
    .local v3, providers:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 563
    .local v2, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget-object v5, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 565
    iget v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget-object v5, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 567
    iget v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget-object v5, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 569
    iget v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget-object v5, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 574
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v3           #providers:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :catch_0
    move-exception v0

    .line 575
    .local v0, e:Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "system server dead?"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 572
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #providers:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_0
    return-object v3
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 718
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->hasBindAppWidgetPermission(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyAppWidgetViewDataChanged(II)V
    .locals 2
    .parameter "appWidgetId"
    .parameter "viewId"

    .prologue
    .line 541
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 542
    return-void
.end method

.method public notifyAppWidgetViewDataChanged([II)V
    .locals 3
    .parameter "appWidgetIds"
    .parameter "viewId"

    .prologue
    .line 526
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->notifyAppWidgetViewDataChanged([II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    return-void

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V
    .locals 2
    .parameter "appWidgetId"
    .parameter "views"

    .prologue
    .line 492
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 493
    return-void
.end method

.method public partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V
    .locals 3
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 461
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->partiallyUpdateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;Z)V
    .locals 3
    .parameter "packageName"
    .parameter "permission"

    .prologue
    .line 736
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->setBindAppWidgetPermission(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    return-void

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unbindRemoteViewsService(ILandroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3
    .parameter "appWidgetId"
    .parameter "intent"
    .parameter "userHandle"

    .prologue
    .line 781
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->unbindRemoteViewsService(ILandroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    return-void

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateAppWidget(ILandroid/widget/RemoteViews;)V
    .locals 2
    .parameter "appWidgetId"
    .parameter "views"

    .prologue
    .line 432
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 433
    return-void
.end method

.method public updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .locals 3
    .parameter "provider"
    .parameter "views"

    .prologue
    .line 510
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateAppWidget([ILandroid/widget/RemoteViews;)V
    .locals 3
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 365
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateAppWidgetOptions(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "appWidgetId"
    .parameter "options"

    .prologue
    .line 385
    :try_start_0
    sget-object v1, Landroid/appwidget/AppWidgetManager;->sService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetOptions(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
