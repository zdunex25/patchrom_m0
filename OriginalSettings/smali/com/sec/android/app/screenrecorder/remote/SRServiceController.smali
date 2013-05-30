.class public Lcom/sec/android/app/screenrecorder/remote/SRServiceController;
.super Ljava/lang/Object;
.source "SRServiceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSRService:Lcom/sec/android/app/screenrecorder/remote/ISRService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/screenrecorder/remote/SRServiceController;->mContext:Landroid/content/Context;

    .line 11
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 78
    invoke-static {p2}, Lcom/sec/android/app/screenrecorder/remote/ISRService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/screenrecorder/remote/ISRService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/screenrecorder/remote/SRServiceController;->mSRService:Lcom/sec/android/app/screenrecorder/remote/ISRService;

    .line 79
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/screenrecorder/remote/SRServiceController;->mSRService:Lcom/sec/android/app/screenrecorder/remote/ISRService;

    .line 74
    return-void
.end method
