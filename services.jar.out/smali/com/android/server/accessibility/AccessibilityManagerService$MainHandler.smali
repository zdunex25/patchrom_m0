.class final Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainHandler"
.end annotation


# static fields
.field public static final MSG_ANNOUNCE_NEW_USER_IF_NEEDED:I = 0x6

.field public static final MSG_SEND_ACCESSIBILITY_EVENT_TO_INPUT_FILTER:I = 0x1

.field public static final MSG_SEND_CLEARED_STATE_TO_CLIENTS_FOR_USER:I = 0x3

.field public static final MSG_SEND_RECREATE_INTERNAL_STATE:I = 0x4

.field public static final MSG_SEND_STATE_TO_CLIENTS:I = 0x2

.field public static final MSG_UPDATE_ACTIVE_WINDOW:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1298
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 1299
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1300
    return-void
.end method

.method private announceNewUserIfNeeded()V
    .locals 10

    .prologue
    .line 1344
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1345
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$400(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    .line 1346
    .local v3, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    if-eqz v4, :cond_0

    .line 1347
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string v6, "user"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 1349
    .local v2, userManager:Landroid/os/UserManager;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v4

    const v6, 0x104055a

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1351
    .local v1, message:Ljava/lang/String;
    const/16 v4, 0x4000

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1353
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1354
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2100(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getRetrievalAllowingWindowLocked()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 1355
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v6

    invoke-virtual {v4, v0, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z

    .line 1357
    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #userManager:Landroid/os/UserManager;
    :cond_0
    monitor-exit v5

    .line 1358
    return-void

    .line 1357
    .end local v3           #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private sendStateToClients(ILandroid/os/RemoteCallbackList;)V
    .locals 4
    .parameter "clientState"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1371
    .local p2, clients:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<Landroid/view/accessibility/IAccessibilityManagerClient;>;"
    :try_start_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1372
    .local v2, userClientCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1373
    invoke-virtual {p2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/IAccessibilityManagerClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1375
    .local v0, client:Landroid/view/accessibility/IAccessibilityManagerClient;
    :try_start_1
    invoke-interface {v0, p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->setState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1372
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1381
    .end local v0           #client:Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local v1           #i:I
    .end local v2           #userClientCount:I
    :catchall_0
    move-exception v3

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3

    .line 1376
    .restart local v0       #client:Landroid/view/accessibility/IAccessibilityManagerClient;
    .restart local v1       #i:I
    .restart local v2       #userClientCount:I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1381
    .end local v0           #client:Landroid/view/accessibility/IAccessibilityManagerClient;
    :cond_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1383
    return-void
.end method

.method private sendStateToClientsForUser(II)V
    .locals 3
    .parameter "clientState"
    .parameter "userId"

    .prologue
    .line 1362
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1363
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 1364
    .local v0, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1365
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    .line 1366
    return-void

    .line 1364
    .end local v0           #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 1304
    iget v3, p1, Landroid/os/Message;->what:I

    .line 1305
    .local v3, type:I
    packed-switch v3, :pswitch_data_0

    .line 1341
    :goto_0
    return-void

    .line 1307
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    .line 1308
    .local v1, event:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 1309
    :try_start_0
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1310
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1312
    :cond_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .line 1312
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 1316
    .end local v1           #event:Landroid/view/accessibility/AccessibilityEvent;
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1317
    .local v0, clientState:I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 1318
    .local v4, userId:I
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-direct {p0, v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    .line 1319
    invoke-direct {p0, v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClientsForUser(II)V

    goto :goto_0

    .line 1322
    .end local v0           #clientState:I
    .end local v4           #userId:I
    :pswitch_2
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 1323
    .restart local v4       #userId:I
    const/4 v7, 0x0

    invoke-direct {p0, v7, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClientsForUser(II)V

    goto :goto_0

    .line 1326
    .end local v4           #userId:I
    :pswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 1327
    .restart local v4       #userId:I
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 1328
    :try_start_2
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v7, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v5

    .line 1329
    .local v5, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->recreateInternalStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v7, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 1330
    monitor-exit v8

    goto :goto_0

    .end local v5           #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7

    .line 1333
    .end local v4           #userId:I
    :pswitch_4
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 1334
    .local v6, windowId:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1335
    .local v2, eventType:I
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2100(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v7

    invoke-virtual {v7, v6, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateActiveWindow(II)V

    goto :goto_0

    .line 1338
    .end local v2           #eventType:I
    .end local v6           #windowId:I
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->announceNewUserIfNeeded()V

    goto :goto_0

    .line 1305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
