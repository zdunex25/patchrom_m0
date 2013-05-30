.class Lcom/samsung/commonimsservice/SamsungAPCommonService$3;
.super Lcom/sec/android/ims/IMSEventListener;
.source "SamsungAPCommonService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/commonimsservice/SamsungAPCommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;


# direct methods
.method constructor <init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    invoke-direct {p0}, Lcom/sec/android/ims/IMSEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleEvent(IIII[BLcom/sec/android/internal/ims/IIMSParams;)V
    .locals 9
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "data"
    .parameter "param"

    .prologue
    const/4 v8, 0x5

    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMS event received EventType["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "AppType ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Arg1 ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Arg2 ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "DATA ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 184
    if-eqz p6, :cond_0

    .line 185
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMS event received EventType["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "AppType ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Arg1 ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Arg2 ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "DATA ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\nPDATA ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getPLettering()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "[\nHistoryDATA ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getHistoryInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\nModify Supported : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getModifyHeader()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 190
    :cond_0
    const/16 v5, 0xa

    if-ne p1, v5, :cond_1

    .line 191
    packed-switch p2, :pswitch_data_0

    .line 218
    :cond_1
    const/16 v5, 0x8

    if-eq p1, v5, :cond_2

    const/4 v5, 0x4

    if-eq p1, v5, :cond_2

    const/4 v5, 0x6

    if-eq p1, v5, :cond_2

    if-ne p1, v8, :cond_62

    .line 223
    :cond_2
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallState listener list size ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 224
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EventType recieved["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] call register len ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    sparse-switch p2, :sswitch_data_0

    .line 1264
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 200
    :pswitch_0
    :try_start_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x1

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 201
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 202
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 203
    .local v3, listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    if-eqz v3, :cond_4

    .line 205
    if-eqz p5, :cond_5

    .line 206
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 210
    .local v4, str:Ljava/lang/String;
    :goto_2
    int-to-long v5, p3

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationDone(Ljava/lang/String;J)V

    .line 201
    .end local v4           #str:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 208
    :cond_5
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_2

    .line 228
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :sswitch_0
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 229
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 230
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    invoke-interface {v3, p3, p4}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onNetworkTransition(II)V

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 237
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    :sswitch_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "VideoListener: Received Event:IMS_CALL_REMOTE_CAPTURE_SUCCESS"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 239
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 240
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 241
    .local v3, listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 242
    if-eqz v3, :cond_6

    .line 243
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 244
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p5}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCaptureSuccess(IZLjava/lang/String;)V

    .line 239
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 252
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "VideoListener: Received Event:IMS_CALL_REMOTE_CAPTURE_FAILURE"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 254
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 255
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 256
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 257
    if-eqz v3, :cond_7

    .line 258
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 259
    const/4 v5, 0x0

    invoke-interface {v3, p3, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCaptureFailure(IZ)V

    .line 254
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 266
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "VideoListener: Received Event:IMS_CALL_LOCAL_CAPTURE_SUCCESS"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 268
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_6
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 269
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 270
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 271
    if-eqz v3, :cond_8

    .line 272
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 273
    const/4 v5, 0x1

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p5}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCaptureSuccess(IZLjava/lang/String;)V

    .line 268
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 282
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "VideoListener: Received Event:IMS_CALL_LOCAL_CAPTURE_FAILURE"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 284
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_7
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 285
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 286
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 287
    if-eqz v3, :cond_9

    .line 288
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 289
    const/4 v5, 0x1

    invoke-interface {v3, p3, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCaptureFailure(IZ)V

    .line 284
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 296
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_5
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VideoListener: Received Event:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 298
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_8
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 299
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 300
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 301
    if-eqz v3, :cond_a

    .line 302
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 303
    const/4 v5, 0x0

    invoke-interface {v3, p3, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCameraEvent(IZ)V

    .line 298
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 309
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_6
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VideoListener: Received Event:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 311
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_9
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 312
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 313
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 314
    if-eqz v3, :cond_b

    .line 315
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 316
    const/4 v5, 0x1

    invoke-interface {v3, p3, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCameraEvent(IZ)V

    .line 311
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 323
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_7
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I
    invoke-static {v5, p1, p4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$800(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I

    move-result v0

    .line 335
    .local v0, callType:I
    if-eqz p5, :cond_d

    .line 336
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 340
    .restart local v4       #str:Ljava/lang/String;
    :goto_a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SessionID ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] RemoteURI ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] CallType ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 341
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 342
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 343
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 344
    if-eqz v3, :cond_c

    .line 345
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 346
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I
    invoke-static {v5, p1, p4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$800(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I

    move-result v5

    invoke-interface {v3, p3, v4, p6, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onRinging(ILjava/lang/String;Lcom/sec/android/internal/ims/IIMSParams;I)V

    .line 341
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 338
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_d
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto/16 :goto_a

    .line 355
    .end local v0           #callType:I
    .end local v4           #str:Ljava/lang/String;
    :sswitch_8
    if-eqz p5, :cond_f

    .line 356
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 360
    .restart local v4       #str:Ljava/lang/String;
    :goto_c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->regExpiry:I
    invoke-static {v5, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$902(Lcom/samsung/commonimsservice/SamsungAPCommonService;I)I

    .line 361
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->regUri:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$1002(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 363
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 364
    .local v3, listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 365
    if-eqz v3, :cond_e

    .line 366
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 367
    int-to-long v5, p3

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationDone(Ljava/lang/String;J)V

    .line 362
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 358
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_f
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_c

    .line 374
    .end local v4           #str:Ljava/lang/String;
    :sswitch_9
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 376
    if-eqz p5, :cond_11

    .line 377
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 381
    .restart local v4       #str:Ljava/lang/String;
    :goto_e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 382
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 383
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 384
    if-eqz v3, :cond_10

    .line 385
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 386
    const-string v5, "Registration Failed"

    invoke-interface {v3, v4, p3, v5}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 381
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 379
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_11
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_e

    .line 394
    .end local v4           #str:Ljava/lang/String;
    :sswitch_a
    if-eqz p5, :cond_13

    .line 395
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 399
    .restart local v4       #str:Ljava/lang/String;
    :goto_10
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 400
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_11
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 401
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 402
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 403
    if-eqz v3, :cond_12

    .line 404
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 405
    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 400
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 397
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_13
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_10

    .line 413
    .end local v4           #str:Ljava/lang/String;
    :sswitch_b
    if-eqz p5, :cond_15

    .line 414
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 418
    .restart local v4       #str:Ljava/lang/String;
    :goto_12
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 419
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_13
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 420
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 421
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 422
    if-eqz v3, :cond_14

    .line 423
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 424
    const/4 v5, -0x4

    const/4 v6, -0x4

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 419
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 416
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_15
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_12

    .line 432
    .end local v4           #str:Ljava/lang/String;
    :sswitch_c
    if-eqz p5, :cond_17

    .line 433
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 437
    .restart local v4       #str:Ljava/lang/String;
    :goto_14
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 438
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_15
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 439
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 440
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 441
    if-eqz v3, :cond_16

    .line 442
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 443
    const/16 v5, -0xc

    const/16 v6, -0xc

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 438
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 435
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_17
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_14

    .line 451
    .end local v4           #str:Ljava/lang/String;
    :sswitch_d
    if-eqz p5, :cond_19

    .line 452
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 456
    .restart local v4       #str:Ljava/lang/String;
    :goto_16
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 457
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_17
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 458
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 459
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 460
    if-eqz v3, :cond_18

    .line 461
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 462
    const/4 v5, -0x4

    const/4 v6, -0x4

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 457
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 454
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_19
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_16

    .line 470
    .end local v4           #str:Ljava/lang/String;
    :sswitch_e
    if-eqz p5, :cond_1b

    .line 471
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 475
    .restart local v4       #str:Ljava/lang/String;
    :goto_18
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 476
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_19
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 477
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 478
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 479
    if-eqz v3, :cond_1a

    .line 480
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 481
    const/4 v5, -0x5

    const/4 v6, -0x5

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 476
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 473
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_1b
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_18

    .line 488
    .end local v4           #str:Ljava/lang/String;
    :sswitch_f
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 489
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 490
    .local v3, listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 491
    if-eqz v3, :cond_1c

    .line 492
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 493
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onRingingBack(I)V

    .line 488
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 500
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_10
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 501
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 502
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 503
    if-eqz v3, :cond_1d

    .line 504
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 505
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onEarlyMediaStart(I)V

    .line 500
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 512
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_11
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 513
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 514
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 515
    if-eqz v3, :cond_1e

    .line 516
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 517
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->stopAlertTone(I)V

    .line 512
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 524
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_12
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 525
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 526
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 527
    if-eqz v3, :cond_1f

    .line 528
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 529
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEnded(I)V

    .line 524
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 536
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_13
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 537
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 538
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 539
    if-eqz v3, :cond_20

    .line 540
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 541
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCalling(I)V

    .line 536
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 549
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_14
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 550
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 551
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 552
    if-eqz v3, :cond_21

    .line 553
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 554
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEnded(I)V

    .line 549
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 561
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_15
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_20
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 562
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 563
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_22

    .line 564
    const/16 v5, -0x1a

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 561
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 571
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_16
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_21
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 572
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 573
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_23

    .line 574
    const/16 v5, -0x1b

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 571
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 581
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_17
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_22
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 582
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 583
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_24

    .line 584
    const/16 v5, -0x1c

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 581
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 591
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_18
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_23
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 592
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 593
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_25

    .line 594
    const/16 v5, -0x1d

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 591
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 601
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_19
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_24
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 602
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 603
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_26

    .line 604
    const/16 v5, -0x1e

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 601
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 611
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1a
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_25
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 612
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 613
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_27

    .line 614
    const/16 v5, -0x26

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 611
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 621
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1b
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_26
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 622
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 623
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_28

    .line 624
    const/16 v5, -0x1f

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 621
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 631
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_27
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 632
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 633
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_29

    .line 634
    const/16 v5, -0x20

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 631
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 641
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1d
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_28
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 642
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 643
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_2a

    .line 644
    const/16 v5, -0xa

    const-string v6, "Network Lost"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 641
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 651
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_29
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 652
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 653
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_2b

    .line 654
    const/16 v5, 0x19f

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 651
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 661
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1f
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 662
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 663
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_2c

    .line 664
    const/16 v5, -0x21

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 661
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 671
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_20
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 672
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 673
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_2d

    .line 674
    const/16 v5, -0x19

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 671
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 685
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_21
    const/4 v1, 0x0

    .line 687
    .local v1, errCode:I
    const/16 v5, 0x162

    if-ne p2, v5, :cond_30

    .line 688
    const/16 v1, -0x28

    .line 700
    :cond_2e
    :goto_2c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 701
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 702
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_2f

    .line 703
    const-string v5, "Call failed"

    invoke-interface {v3, p3, v1, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 700
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 690
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_30
    const/16 v5, 0x163

    if-ne p2, v5, :cond_31

    .line 691
    const/16 v1, -0x29

    goto :goto_2c

    .line 693
    :cond_31
    const/16 v5, 0x160

    if-ne p2, v5, :cond_32

    .line 695
    const/16 v1, -0x2b

    goto :goto_2c

    .line 697
    :cond_32
    const/16 v5, 0x161

    if-ne p2, v5, :cond_2e

    .line 698
    const/16 v1, -0x2a

    goto :goto_2c

    .line 710
    .end local v1           #errCode:I
    :sswitch_22
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 711
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 712
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_33

    .line 713
    const/16 v5, -0x18

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 710
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 720
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_23
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 721
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 722
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_34

    .line 723
    const/16 v5, -0x17

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 720
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 730
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_24
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_30
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 731
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 732
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_35

    .line 733
    const/16 v5, -0x25

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 730
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 740
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_25
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_31
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 741
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 742
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_36

    .line 743
    const/16 v5, -0x16

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 740
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 750
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_26
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_32
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 751
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 752
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_37

    .line 753
    const/16 v5, -0x15

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 750
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 760
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_27
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_33
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 761
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 762
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_38

    .line 763
    const/16 v5, -0x14

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 760
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 770
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_28
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_34
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 771
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 772
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_39

    .line 773
    const/16 v5, -0x13

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 770
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 780
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_29
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_35
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 781
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 782
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_3a

    .line 783
    const/16 v5, -0x2d

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getErrorReasonCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 780
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 790
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2a
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_36
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 791
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 792
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_3b

    .line 793
    const/16 v5, -0x12

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 790
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 800
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2b
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_37
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 801
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 802
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_3c

    .line 803
    const/16 v5, -0x11

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 800
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 810
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_38
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 811
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 812
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_3d

    .line 813
    const/16 v5, -0x10

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 810
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 820
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->onBadRequest(I)V
    invoke-static {v5, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$1100(Lcom/samsung/commonimsservice/SamsungAPCommonService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 181
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 825
    :sswitch_2e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_39
    :try_start_2
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 826
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 827
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 828
    if-eqz v3, :cond_3e

    .line 829
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 830
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallBusy(I)V

    .line 825
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 838
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2f
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 839
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 840
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 841
    if-eqz v3, :cond_3f

    .line 842
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 843
    const/4 v5, -0x7

    const-string v6, "Called party not in LTE area"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 838
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 850
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_30
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 851
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 852
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 853
    if-eqz v3, :cond_40

    .line 854
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 855
    const/16 v5, -0x2f

    const-string v6, "Cannot connect HD call, Divert to normal call"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 850
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 861
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_31
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 862
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 863
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 864
    if-eqz v3, :cond_41

    .line 865
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 866
    const/4 v5, -0x6

    const-string v6, "Called party does not exist"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 861
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 874
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_32
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 875
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 876
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 877
    if-eqz v3, :cond_42

    .line 878
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 879
    const/16 v5, -0x2c

    const-string v6, "Called party has only VoLte Alternative Services"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 874
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 886
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_33
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 887
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 888
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 889
    if-eqz v3, :cond_43

    .line 890
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 891
    const/16 v5, -0x22

    const-string v6, "Call Failed"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 886
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 899
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_34
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 900
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 901
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 902
    if-eqz v3, :cond_44

    .line 903
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 904
    const/16 v5, -0x30

    const-string v6, "Call Failed"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 899
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 911
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_35
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_40
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 912
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 913
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 914
    if-eqz v3, :cond_45

    .line 915
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 916
    const/16 v5, -0x27

    const-string v6, "Call Failed"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 911
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 924
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_36
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_41
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 925
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 926
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 927
    if-eqz v3, :cond_46

    .line 928
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 929
    const/4 v5, -0x5

    const-string v6, "Call Failed"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 924
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 936
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_37
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_42
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 937
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 938
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 939
    if-eqz v3, :cond_47

    .line 940
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 941
    const/16 v5, 0x19f

    const-string v6, "Called party does not support media"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 936
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 948
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_38
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_43
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 949
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 950
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 951
    if-eqz v3, :cond_48

    .line 952
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 953
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallHeld(I)V

    .line 948
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 960
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_39
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_44
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 961
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 962
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 963
    if-eqz v3, :cond_49

    .line 964
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 965
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallResumed(I)V

    .line 960
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 974
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3a
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_45
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 975
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 976
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 977
    if-eqz v3, :cond_4a

    .line 978
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 979
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I
    invoke-static {v5, p1, p4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$800(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I

    move-result v5

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onConferenceEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 974
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 985
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3b
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_46
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 986
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 987
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 988
    if-eqz v3, :cond_4b

    .line 989
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 990
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I
    invoke-static {v5, p1, p4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$800(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I

    move-result v5

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 985
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 997
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_47
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 998
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 999
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1000
    if-eqz v3, :cond_4c

    .line 1001
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1002
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCalling(I)V

    .line 997
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 1009
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3d
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_48
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1010
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1011
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1012
    if-eqz v3, :cond_4d

    .line 1013
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1014
    const/4 v5, 0x2

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1009
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 1021
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_49
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1022
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1023
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1024
    if-eqz v3, :cond_4e

    .line 1025
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1026
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1021
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 1033
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3f
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1034
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1035
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1036
    if-eqz v3, :cond_4f

    .line 1037
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1038
    const/4 v5, 0x5

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1033
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 1045
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_40
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1046
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1047
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1048
    if-eqz v3, :cond_50

    .line 1049
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1050
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1045
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 1057
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_41
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1058
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1059
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1060
    if-eqz v3, :cond_51

    .line 1061
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1062
    const/4 v5, 0x5

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1057
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 1069
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_42
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1070
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1071
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1072
    if-eqz v3, :cond_52

    .line 1073
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1074
    const/4 v5, 0x5

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1069
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 1081
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_43
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1082
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1083
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1084
    if-eqz v3, :cond_53

    .line 1085
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1086
    const/4 v5, 0x5

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1081
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 1093
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_44
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1094
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1095
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1096
    if-eqz v3, :cond_54

    .line 1097
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1098
    const/4 v5, 0x2

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1093
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 1105
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_45
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_50
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1106
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1107
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1108
    if-eqz v3, :cond_55

    .line 1109
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1110
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1105
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 1117
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_46
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_51
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1118
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1119
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1120
    if-eqz v3, :cond_56

    .line 1121
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1122
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1117
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 1129
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_47
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_52
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1130
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1131
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1132
    if-eqz v3, :cond_57

    .line 1133
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1134
    const/4 v5, 0x2

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1129
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 1141
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_48
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_53
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1142
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1143
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1144
    if-eqz v3, :cond_58

    .line 1145
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1146
    const/4 v5, 0x2

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1141
    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 1153
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_49
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_54
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1154
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1155
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1156
    if-eqz v3, :cond_59

    .line 1157
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1158
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1153
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 1165
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4a
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_55
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1166
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1167
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1168
    if-eqz v3, :cond_5a

    .line 1169
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1170
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1165
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 1177
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4b
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_56
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1178
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1179
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1180
    if-eqz v3, :cond_5b

    .line 1181
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1182
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onVideoHeld(I)V

    .line 1177
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 1189
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_57
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1190
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1191
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1192
    if-eqz v3, :cond_5c

    .line 1193
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1194
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onVideoResumed(I)V

    .line 1189
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 1201
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4d
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_58
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1202
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1203
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1204
    if-eqz v3, :cond_5d

    .line 1205
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1206
    const/16 v5, 0x2bc

    const-string v6, "Upgrade/downgrade rejected"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 1201
    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 1212
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_59
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1213
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1214
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1215
    if-eqz v3, :cond_5e

    .line 1216
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1217
    const/16 v5, 0x2bd

    const-string v6, "Upgrade/downgrade rejected"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 1212
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 1224
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4f
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1225
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1226
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1227
    if-eqz v3, :cond_5f

    .line 1228
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1229
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "IMS_CALL_HOLD_FAILED_IND.."

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1230
    const/16 v5, 0x2be

    const-string v6, "Hold has failed "

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 1224
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 1236
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_50
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1237
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1238
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1239
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "IMS_CALL_RETRIEVE_FAILED_IND..."

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1240
    if-eqz v3, :cond_60

    .line 1241
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1242
    const/16 v5, 0x2bf

    const-string v6, "Resume has failed "

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 1236
    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 1250
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_51
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1251
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1252
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1253
    if-eqz v3, :cond_61

    .line 1254
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1255
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onVideoAvailable(I)V

    .line 1250
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 1262
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_62
    const-string v5, "SamsungAPCommonService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event listener invalid app type ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch

    .line 225
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_8
        0x67 -> :sswitch_b
        0x68 -> :sswitch_9
        0x6d -> :sswitch_e
        0x6e -> :sswitch_c
        0x6f -> :sswitch_a
        0x70 -> :sswitch_d
        0xca -> :sswitch_7
        0xcb -> :sswitch_3c
        0xcc -> :sswitch_13
        0xcd -> :sswitch_f
        0xcf -> :sswitch_14
        0xd0 -> :sswitch_3b
        0xd1 -> :sswitch_12
        0xd2 -> :sswitch_2a
        0xd4 -> :sswitch_2c
        0xd5 -> :sswitch_2d
        0xd6 -> :sswitch_28
        0xd7 -> :sswitch_31
        0xd8 -> :sswitch_2f
        0xd9 -> :sswitch_2e
        0xda -> :sswitch_36
        0xdb -> :sswitch_34
        0xde -> :sswitch_1a
        0xe1 -> :sswitch_2b
        0xe4 -> :sswitch_15
        0xe5 -> :sswitch_16
        0xe6 -> :sswitch_17
        0xe7 -> :sswitch_18
        0xea -> :sswitch_19
        0xeb -> :sswitch_35
        0xed -> :sswitch_1b
        0xee -> :sswitch_37
        0x107 -> :sswitch_4f
        0x108 -> :sswitch_50
        0x109 -> :sswitch_38
        0x10a -> :sswitch_39
        0x12a -> :sswitch_3
        0x12b -> :sswitch_4
        0x12c -> :sswitch_1
        0x12d -> :sswitch_2
        0x12e -> :sswitch_51
        0x12f -> :sswitch_20
        0x130 -> :sswitch_22
        0x131 -> :sswitch_23
        0x132 -> :sswitch_1e
        0x133 -> :sswitch_27
        0x134 -> :sswitch_25
        0x135 -> :sswitch_1f
        0x136 -> :sswitch_2f
        0x137 -> :sswitch_1c
        0x138 -> :sswitch_6
        0x139 -> :sswitch_5
        0x13a -> :sswitch_24
        0x13d -> :sswitch_26
        0x13e -> :sswitch_33
        0x13f -> :sswitch_3a
        0x141 -> :sswitch_29
        0x142 -> :sswitch_3a
        0x147 -> :sswitch_3a
        0x14b -> :sswitch_3d
        0x14c -> :sswitch_3f
        0x14d -> :sswitch_44
        0x14e -> :sswitch_43
        0x14f -> :sswitch_4d
        0x150 -> :sswitch_4e
        0x151 -> :sswitch_3e
        0x152 -> :sswitch_47
        0x153 -> :sswitch_40
        0x154 -> :sswitch_45
        0x155 -> :sswitch_46
        0x156 -> :sswitch_48
        0x157 -> :sswitch_41
        0x158 -> :sswitch_42
        0x159 -> :sswitch_49
        0x15a -> :sswitch_4b
        0x15b -> :sswitch_4a
        0x15c -> :sswitch_4c
        0x15f -> :sswitch_0
        0x160 -> :sswitch_21
        0x161 -> :sswitch_21
        0x162 -> :sswitch_21
        0x163 -> :sswitch_21
        0x164 -> :sswitch_10
        0x165 -> :sswitch_32
        0x166 -> :sswitch_11
        0x167 -> :sswitch_1d
        0x168 -> :sswitch_30
    .end sparse-switch
.end method

.method public notifyEvent(IIII[I[Ljava/lang/String;)V
    .locals 5
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "participantList"
    .parameter "uriList"

    .prologue
    .line 1267
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMS event received EventType["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "AppType ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Arg1 ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Arg2 ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1269
    packed-switch p2, :pswitch_data_0

    .line 1283
    :cond_0
    return-void

    .line 1271
    :pswitch_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1272
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1273
    .local v1, listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listener["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1274
    if-eqz v1, :cond_1

    .line 1275
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying listener["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1276
    invoke-interface {v1, p3, p5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onNotifyReceived(I[I[Ljava/lang/String;)V

    .line 1271
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1269
    nop

    :pswitch_data_0
    .packed-switch 0x145
        :pswitch_0
    .end packed-switch
.end method
