.class Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$10;
.super Landroid/content/BroadcastReceiver;
.source "ViPER4AndroidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$10;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    .line 1003
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1008
    const-string v6, "ViPER4Android"

    const-string v7, "mAudioSessionReceiver::onReceive()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$10;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    const-string v7, "com.vipercn.viper4android_v2.settings"

    invoke-virtual {v6, v7, v10}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1011
    .local v2, prefSettings:Landroid/content/SharedPreferences;
    const-string v6, "viper4android.settings.compatiblemode"

    const-string v7, "global"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1012
    .local v4, szCompatibleMode:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1013
    .local v1, mFXInLocalMode:Z
    const-string v6, "global"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x0

    .line 1016
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1017
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1018
    .local v3, sessionId:I
    if-nez v3, :cond_1

    .line 1020
    const-string v6, "ViPER4Android"

    const-string v7, "Global output mixer session control received! "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :goto_1
    return-void

    .line 1014
    .end local v0           #action:Ljava/lang/String;
    .end local v3           #sessionId:I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1024
    .restart local v0       #action:Ljava/lang/String;
    .restart local v3       #sessionId:I
    :cond_1
    const-string v6, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1026
    const-string v6, "ViPER4Android"

    const-string v7, "New audio session: %d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    if-nez v1, :cond_2

    .line 1029
    const-string v6, "ViPER4Android"

    const-string v7, "Only global effect allowed."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1032
    :cond_2
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$10;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    #getter for: Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mV4AMutex:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->access$14(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;->acquire()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1034
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$10;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    #getter for: Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFXList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->access$15(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_3

    .line 1036
    const-string v6, "ViPER4Android"

    const-string v7, "Creating local V4ADSPModule ..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$10;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    #getter for: Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFXList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->access$15(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)Landroid/util/SparseArray;

    move-result-object v6

    new-instance v7, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    iget-object v8, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$10;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    sget-object v9, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->ID_V4A_GENERAL_FX:Ljava/util/UUID;

    invoke-direct {v7, v8, v9, v3}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;-><init>(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;Ljava/util/UUID;I)V

    invoke-virtual {v6, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1039
    :cond_3
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$10;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    #getter for: Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mV4AMutex:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->access$14(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;->release()V

    .line 1044
    :cond_4
    :goto_2
    const-string v6, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1046
    const-string v6, "ViPER4Android"

    const-string v7, "Audio session removed: %d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$10;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    #getter for: Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mV4AMutex:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->access$14(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;->acquire()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1049
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$10;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    #getter for: Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFXList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->access$15(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_5

    .line 1051
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$10;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    #getter for: Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFXList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->access$15(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;

    .line 1052
    .local v5, v4aRemove:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$10;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    #getter for: Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mGeneralFXList:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->access$15(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1053
    if-eqz v5, :cond_5

    .line 1054
    invoke-virtual {v5}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;->release()V

    .line 1056
    .end local v5           #v4aRemove:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$V4ADSPModule;
    :cond_5
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$10;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    #getter for: Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->mV4AMutex:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;
    invoke-static {v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->access$14(Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;)Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$ResourceMutex;->release()V

    .line 1061
    :cond_6
    :goto_3
    iget-object v6, p0, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService$10;->this$0:Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;

    invoke-virtual {v6, v10}, Lcom/vipercn/viper4android_v2/service/ViPER4AndroidService;->updateSystem(Z)V

    goto/16 :goto_1

    .line 1041
    :cond_7
    const-string v6, "ViPER4Android"

    const-string v7, "Semaphore accquire failed."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1058
    :cond_8
    const-string v6, "ViPER4Android"

    const-string v7, "Semaphore accquire failed."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
