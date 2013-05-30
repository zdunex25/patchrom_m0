.class Lcom/android/OriginalSettings/deviceinfo/Status$6;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 1165
    iput-object p1, p0, Lcom/android/OriginalSettings/deviceinfo/Status$6;->this$0:Lcom/android/OriginalSettings/deviceinfo/Status;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 1167
    const-string v0, "Status"

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status$6;->this$0:Lcom/android/OriginalSettings/deviceinfo/Status;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lcom/android/OriginalSettings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/deviceinfo/Status;->access$1202(Lcom/android/OriginalSettings/deviceinfo/Status;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 1169
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status$6;->this$0:Lcom/android/OriginalSettings/deviceinfo/Status;

    #calls: Lcom/android/OriginalSettings/deviceinfo/Status;->getOemData()V
    invoke-static {v0}, Lcom/android/OriginalSettings/deviceinfo/Status;->access$1300(Lcom/android/OriginalSettings/deviceinfo/Status;)V

    .line 1170
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 1173
    const-string v0, "Status"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Status$6;->this$0:Lcom/android/OriginalSettings/deviceinfo/Status;

    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/deviceinfo/Status;->access$1202(Lcom/android/OriginalSettings/deviceinfo/Status;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 1175
    return-void
.end method
