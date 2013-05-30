.class Lcom/android/server/wm/WindowManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1019
    const-string v5, "com.sec.android.extra.ARRAGE_MODE"

    const/4 v6, 0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1020
    .local v3, mode:I
    const-string v5, "com.sec.android.extra.ARRAGE_TYPE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1021
    .local v4, type:Ljava/lang/String;
    const-string v5, "InputMethod"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1022
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    if-le v5, v6, :cond_1

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    .line 1027
    .local v0, idx:I
    if-lez v0, :cond_2

    .line 1028
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    add-int/lit8 v6, v0, -0x1

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v7, v7, Lcom/android/server/wm/WindowManagerService;->mWindowCountBetweenIMTargetAndTopWidget:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1029
    .local v1, imFocus:Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_2

    .line 1030
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v5

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v5

    and-int/lit8 v5, v5, 0x6

    if-nez v5, :cond_0

    .line 1037
    .end local v0           #idx:I
    .end local v1           #imFocus:Lcom/android/server/wm/WindowState;
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 1038
    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$504()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService;->access$502(I)I

    .line 1039
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$500()I

    move-result v5

    if-nez v5, :cond_3

    .line 1040
    or-int/lit16 v3, v3, 0x400

    .line 1045
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput v3, v5, Lcom/android/server/wm/WindowManagerService;->mArrangeMode:I

    .line 1046
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1048
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 1049
    .local v2, mgr:Landroid/app/IActivityManager;
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1050
    .end local v2           #mgr:Landroid/app/IActivityManager;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 1042
    :cond_3
    and-int/lit16 v3, v3, -0x401

    goto :goto_1

    .line 1046
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method
