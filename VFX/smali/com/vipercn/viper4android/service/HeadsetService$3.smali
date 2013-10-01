.class Lcom/vipercn/viper4android/service/HeadsetService$3;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vipercn/viper4android/service/HeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vipercn/viper4android/service/HeadsetService;


# direct methods
.method constructor <init>(Lcom/vipercn/viper4android/service/HeadsetService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vipercn/viper4android/service/HeadsetService$3;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    .line 398
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 403
    const-string v6, "ViPER4Android"

    const-string v7, "mAudioSessionReceiver::onReceive()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService$3;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    const-string v7, "com.vipercn.viper4android.settings"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/vipercn/viper4android/service/HeadsetService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 406
    .local v2, prefSettings:Landroid/content/SharedPreferences;
    const-string v6, "viper4android.settings.compatiblemode"

    const-string v7, "global"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, szCompatibleMode:Ljava/lang/String;
    const/4 v1, 0x0

    .line 408
    .local v1, mFXInLocalMode:Z
    const-string v6, "global"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x0

    .line 411
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.media.extra.AUDIO_SESSION"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 413
    .local v3, sessionId:I
    if-nez v3, :cond_1

    .line 415
    const-string v6, "ViPER4Android"

    const-string v7, "New audio session: %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :goto_1
    return-void

    .line 409
    .end local v0           #action:Ljava/lang/String;
    .end local v3           #sessionId:I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 419
    .restart local v0       #action:Ljava/lang/String;
    .restart local v3       #sessionId:I
    :cond_1
    const-string v6, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 421
    const-string v6, "ViPER4Android"

    const-string v7, "New audio session: %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    if-nez v1, :cond_2

    .line 424
    const-string v6, "ViPER4Android"

    const-string v7, "Only global effect allowed."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 427
    :cond_2
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService$3;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    #getter for: Lcom/vipercn/viper4android/service/HeadsetService;->mV4AMutex:Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;
    invoke-static {v6}, Lcom/vipercn/viper4android/service/HeadsetService;->access$3(Lcom/vipercn/viper4android/service/HeadsetService;)Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;->acquire()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 429
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService$3;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    #getter for: Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFXList:Ljava/util/Map;
    invoke-static {v6}, Lcom/vipercn/viper4android/service/HeadsetService;->access$4(Lcom/vipercn/viper4android/service/HeadsetService;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 431
    const-string v6, "ViPER4Android"

    const-string v7, "Creating local V4ADSPModule ..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService$3;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    #getter for: Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFXList:Ljava/util/Map;
    invoke-static {v6}, Lcom/vipercn/viper4android/service/HeadsetService;->access$4(Lcom/vipercn/viper4android/service/HeadsetService;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    iget-object v9, p0, Lcom/vipercn/viper4android/service/HeadsetService$3;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    sget-object v10, Lcom/vipercn/viper4android/service/HeadsetService;->ID_V4A_GENERAL_FX:Ljava/util/UUID;

    const/16 v11, 0x7fff

    invoke-direct {v8, v9, v10, v11, v3}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;-><init>(Lcom/vipercn/viper4android/service/HeadsetService;Ljava/util/UUID;II)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_3
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService$3;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    #getter for: Lcom/vipercn/viper4android/service/HeadsetService;->mV4AMutex:Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;
    invoke-static {v6}, Lcom/vipercn/viper4android/service/HeadsetService;->access$3(Lcom/vipercn/viper4android/service/HeadsetService;)Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;->release()V

    .line 439
    :cond_4
    :goto_2
    const-string v6, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 441
    const-string v6, "ViPER4Android"

    const-string v7, "Audio session removed: %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService$3;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    #getter for: Lcom/vipercn/viper4android/service/HeadsetService;->mV4AMutex:Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;
    invoke-static {v6}, Lcom/vipercn/viper4android/service/HeadsetService;->access$3(Lcom/vipercn/viper4android/service/HeadsetService;)Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;->acquire()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 444
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService$3;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    #getter for: Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFXList:Ljava/util/Map;
    invoke-static {v6}, Lcom/vipercn/viper4android/service/HeadsetService;->access$4(Lcom/vipercn/viper4android/service/HeadsetService;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 446
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService$3;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    #getter for: Lcom/vipercn/viper4android/service/HeadsetService;->mGeneralFXList:Ljava/util/Map;
    invoke-static {v6}, Lcom/vipercn/viper4android/service/HeadsetService;->access$4(Lcom/vipercn/viper4android/service/HeadsetService;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;

    .line 447
    .local v5, v4aRemove:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;
    if-eqz v5, :cond_5

    .line 448
    invoke-virtual {v5}, Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;->release()V

    .line 450
    .end local v5           #v4aRemove:Lcom/vipercn/viper4android/service/HeadsetService$V4ADSPModule;
    :cond_5
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService$3;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    #getter for: Lcom/vipercn/viper4android/service/HeadsetService;->mV4AMutex:Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;
    invoke-static {v6}, Lcom/vipercn/viper4android/service/HeadsetService;->access$3(Lcom/vipercn/viper4android/service/HeadsetService;)Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vipercn/viper4android/service/HeadsetService$ResourceMutex;->release()V

    .line 455
    :cond_6
    :goto_3
    iget-object v6, p0, Lcom/vipercn/viper4android/service/HeadsetService$3;->this$0:Lcom/vipercn/viper4android/service/HeadsetService;

    invoke-virtual {v6}, Lcom/vipercn/viper4android/service/HeadsetService;->updateSystem()V

    goto/16 :goto_1

    .line 436
    :cond_7
    const-string v6, "ViPER4Android"

    const-string v7, "Semaphore accquire failed."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 452
    :cond_8
    const-string v6, "ViPER4Android"

    const-string v7, "Semaphore accquire failed."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
