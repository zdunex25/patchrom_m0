.class Landroid/webkit/WebViewFactory;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# static fields
.field private static final CHROMIUM_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webviewchromium.WebViewChromiumFactoryProvider"

.field private static final CHROMIUM_WEBVIEW_JAR:Ljava/lang/String; = "/system/framework/webviewchromium.jar"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_WEBVIEW_FACTORY:Ljava/lang/String; = "android.webkit.WebViewClassic$Factory"

.field private static final LOGTAG:Ljava/lang/String; = "WebViewFactory"

.field private static sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

.field private static final sProviderLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFactoryByName(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/webkit/WebViewFactoryProvider;
    .locals 5
    .parameter "providerName"
    .parameter "loader"

    .prologue
    .line 91
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 93
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebViewFactoryProvider;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 101
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v2, "WebViewFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 96
    :catch_1
    move-exception v1

    .line 97
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v2, "WebViewFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 98
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 99
    .local v1, e:Ljava/lang/InstantiationException;
    const-string v2, "WebViewFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static getProvider()Landroid/webkit/WebViewFactoryProvider;
    .locals 4

    .prologue
    .line 47
    sget-object v2, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 50
    :try_start_0
    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    monitor-exit v2

    .line 75
    .local v0, oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    :goto_0
    return-object v1

    .line 55
    .end local v0           #oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    :cond_0
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "webview.use_chromium"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 58
    .restart local v0       #oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->loadChromiumProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    :try_start_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 65
    :cond_1
    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-nez v1, :cond_2

    .line 68
    const-string v1, "android.webkit.WebViewClassic$Factory"

    const-class v3, Landroid/webkit/WebViewFactory;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/webkit/WebViewFactory;->getFactoryByName(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/webkit/WebViewFactoryProvider;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    .line 70
    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-nez v1, :cond_2

    .line 72
    new-instance v1, Landroid/webkit/WebViewClassic$Factory;

    invoke-direct {v1}, Landroid/webkit/WebViewClassic$Factory;-><init>()V

    sput-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    .line 75
    :cond_2
    sget-object v1, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    monitor-exit v2

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 61
    :catchall_1
    move-exception v1

    :try_start_3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private static loadChromiumProvider()Landroid/webkit/WebViewFactoryProvider;
    .locals 4

    .prologue
    .line 82
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v1, "/system/framework/webviewchromium.jar"

    const/4 v2, 0x0

    const-class v3, Landroid/webkit/WebViewFactory;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 84
    .local v0, clazzLoader:Ljava/lang/ClassLoader;
    const-string v1, "com.android.webviewchromium.WebViewChromiumFactoryProvider"

    invoke-static {v1, v0}, Landroid/webkit/WebViewFactory;->getFactoryByName(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/webkit/WebViewFactoryProvider;

    move-result-object v1

    return-object v1
.end method
