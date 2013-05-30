.class public Lcom/android/server/am/FlashBoardManagerService;
.super Landroid/app/IFlashBoardManager$Stub;
.source "FlashBoardManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FlashBoardManagerService"

.field private static mSelf:Lcom/android/server/am/FlashBoardManagerService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsEnabled:Z

.field private mIsVisible:Z

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field final mServiceAquireLock:Ljava/lang/Object;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/FlashBoardManagerService;->mSelf:Lcom/android/server/am/FlashBoardManagerService;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 3
    .parameter "service"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/IFlashBoardManager$Stub;-><init>()V

    .line 30
    iput-boolean v1, p0, Lcom/android/server/am/FlashBoardManagerService;->mIsEnabled:Z

    .line 31
    iput-boolean v1, p0, Lcom/android/server/am/FlashBoardManagerService;->mIsVisible:Z

    .line 33
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/FlashBoardManagerService;->mServiceAquireLock:Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lcom/android/server/am/FlashBoardManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 37
    iput-object p2, p0, Lcom/android/server/am/FlashBoardManagerService;->mContext:Landroid/content/Context;

    .line 38
    sput-object p0, Lcom/android/server/am/FlashBoardManagerService;->mSelf:Lcom/android/server/am/FlashBoardManagerService;

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 44
    :cond_0
    if-eqz v0, :cond_1

    .line 45
    const-string v1, "com.sec.feature.flashboard"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/FlashBoardManagerService;->mIsEnabled:Z

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.flashboard.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/FlashBoardManagerService;->mIsEnabled:Z

    goto :goto_0
.end method

.method public static getSelf()Lcom/android/server/am/FlashBoardManagerService;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/server/am/FlashBoardManagerService;->mSelf:Lcom/android/server/am/FlashBoardManagerService;

    return-object v0
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/server/am/FlashBoardManagerService;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/FlashBoardManagerService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 101
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FlashBoardManagerService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/FlashBoardManagerService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 108
    return-void
.end method

.method public exitBar()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public getBarVisibility()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/server/am/FlashBoardManagerService;->mIsEnabled:Z

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/FlashBoardManagerService;->mIsVisible:Z

    goto :goto_0
.end method

.method public getEnable()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/server/am/FlashBoardManagerService;->mIsEnabled:Z

    return v0
.end method

.method public setBarVisiblity(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/server/am/FlashBoardManagerService;->mIsVisible:Z

    .line 74
    return-void
.end method

.method public setWindowType(IIILandroid/os/Bundle;)V
    .locals 9
    .parameter "task"
    .parameter "type"
    .parameter "flags"
    .parameter "options"

    .prologue
    .line 61
    iget-object v3, p0, Lcom/android/server/am/FlashBoardManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, p3, p4}, Lcom/android/server/am/ActivityManagerService;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 62
    iget-object v3, p0, Lcom/android/server/am/FlashBoardManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 63
    .local v0, ar:Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/FlashBoardManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->getWindowMode(Landroid/os/IBinder;)I

    move-result v2

    .line 64
    .local v2, windowMode:I
    const v3, -0x1000001

    and-int/2addr v2, v3

    .line 65
    const/high16 v3, 0x200

    or-int/2addr v2, v3

    .line 66
    iget-object v3, p0, Lcom/android/server/am/FlashBoardManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/am/ActivityManagerService;->setWindowMode(Landroid/os/IBinder;IZ)V

    .line 67
    iget-object v3, p0, Lcom/android/server/am/FlashBoardManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->getWindowInfo(Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v1

    .line 68
    .local v1, windowInfo:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/16 v6, 0x190

    const/16 v7, 0x2d0

    const/16 v8, 0x500

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 69
    iget-object v3, p0, Lcom/android/server/am/FlashBoardManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/am/ActivityManagerService;->setWindowInfo(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 70
    return-void
.end method
