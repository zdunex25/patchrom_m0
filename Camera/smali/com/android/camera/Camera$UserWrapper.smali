.class public Lcom/android/camera/Camera$UserWrapper;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserWrapper"
.end annotation


# instance fields
.field private mInit:Z

.field public mTimeout:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUserCountCheck:I

.field public mUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 6979
    iput-object p1, p0, Lcom/android/camera/Camera$UserWrapper;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6975
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    .line 6976
    iput-boolean v1, p0, Lcom/android/camera/Camera$UserWrapper;->mInit:Z

    .line 6977
    iput v1, p0, Lcom/android/camera/Camera$UserWrapper;->mUserCountCheck:I

    .line 6980
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    .line 6981
    iget-object v0, p0, Lcom/android/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 6982
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    .line 6983
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    const/4 v1, 0x0

    .line 6985
    iput-object p1, p0, Lcom/android/camera/Camera$UserWrapper;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6975
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    .line 6976
    iput-boolean v1, p0, Lcom/android/camera/Camera$UserWrapper;->mInit:Z

    .line 6977
    iput v1, p0, Lcom/android/camera/Camera$UserWrapper;->mUserCountCheck:I

    .line 6986
    iput-object p2, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    .line 6987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera$UserWrapper;->mInit:Z

    .line 6988
    return-void
.end method

.method private compareListComponent(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, one:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    .local p2, two:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    const/4 v3, 0x0

    .line 7101
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 7110
    :cond_0
    :goto_0
    return v3

    .line 7103
    :cond_1
    const/4 v0, 0x1

    .line 7104
    .local v0, b:Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/shareshot/User;

    .line 7105
    .local v2, u2:Lcom/samsung/shareshot/User;
    invoke-direct {p0, v2, p1}, Lcom/android/camera/Camera$UserWrapper;->contain(Lcom/samsung/shareshot/User;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 7110
    .end local v2           #u2:Lcom/samsung/shareshot/User;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private contain(Lcom/samsung/shareshot/User;Ljava/util/List;)Z
    .locals 4
    .parameter "user"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/shareshot/User;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 7114
    .local p2, userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    if-eqz p2, :cond_1

    .line 7115
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/shareshot/User;

    .line 7116
    .local v1, u:Lcom/samsung/shareshot/User;
    invoke-virtual {v1, p1}, Lcom/samsung/shareshot/User;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7117
    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 7118
    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getHeadImage()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getHeadImage()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getHeadImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getHeadImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7119
    const/4 v2, 0x1

    .line 7124
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #u:Lcom/samsung/shareshot/User;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeUser(Lcom/samsung/shareshot/User;)V
    .locals 5
    .parameter "user"

    .prologue
    .line 7071
    iget-object v2, p0, Lcom/android/camera/Camera$UserWrapper;->this$0:Lcom/android/camera/Camera;

    iget-object v3, v2, Lcom/android/camera/Camera;->sobject:Ljava/lang/Object;

    monitor-enter v3

    .line 7072
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7073
    iget-object v2, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/shareshot/User;

    .line 7074
    .local v1, u:Lcom/samsung/shareshot/User;
    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7075
    iget-object v2, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7076
    iget-object v2, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7077
    const-string v2, "@"

    const-string v4, " user changed so refresh view"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7078
    iget-object v2, p0, Lcom/android/camera/Camera$UserWrapper;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v2, Lcom/android/camera/Camera;->mActivieUserHandler:Landroid/os/Handler;

    const/16 v4, 0xcd

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7079
    monitor-exit v3

    .line 7084
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #u:Lcom/samsung/shareshot/User;
    :goto_0
    return-void

    .line 7083
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public destory()V
    .locals 3

    .prologue
    .line 6991
    iget-object v1, p0, Lcom/android/camera/Camera$UserWrapper;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v1, Lcom/android/camera/Camera;->sobject:Ljava/lang/Object;

    monitor-enter v2

    .line 6992
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6993
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    .line 6994
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/Camera$UserWrapper;->mInit:Z

    .line 6995
    iget-object v1, p0, Lcom/android/camera/Camera$UserWrapper;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v1, :cond_0

    .line 6996
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7006
    :goto_0
    return-void

    .line 6998
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/Camera$UserWrapper;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v1}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6999
    iget-object v1, p0, Lcom/android/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7005
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 7001
    :catch_0
    move-exception v0

    .line 7003
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getUserCount()I
    .locals 4

    .prologue
    .line 7009
    iget-object v0, p0, Lcom/android/camera/Camera$UserWrapper;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v0, Lcom/android/camera/Camera;->sobject:Ljava/lang/Object;

    monitor-enter v1

    .line 7010
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 7011
    const-string v0, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserList size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7012
    iget-object v0, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    .line 7015
    :goto_0
    return v0

    .line 7014
    :cond_0
    monitor-exit v1

    .line 7015
    const/4 v0, -0x1

    goto :goto_0

    .line 7014
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserFromList(I)Lcom/samsung/shareshot/User;
    .locals 5
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 7029
    iget-object v3, p0, Lcom/android/camera/Camera$UserWrapper;->this$0:Lcom/android/camera/Camera;

    iget-object v3, v3, Lcom/android/camera/Camera;->sobject:Ljava/lang/Object;

    monitor-enter v3

    .line 7030
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 7032
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/shareshot/User;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7033
    .local v1, user:Lcom/samsung/shareshot/User;
    if-eqz v1, :cond_0

    .line 7034
    :try_start_2
    monitor-exit v3

    .line 7040
    .end local v1           #user:Lcom/samsung/shareshot/User;
    :goto_0
    return-object v1

    .line 7035
    :catch_0
    move-exception v0

    .line 7036
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 7039
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    monitor-exit v3

    move-object v1, v2

    .line 7040
    goto :goto_0

    .line 7039
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getUserFromList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7019
    iget-object v0, p0, Lcom/android/camera/Camera$UserWrapper;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v0, Lcom/android/camera/Camera;->sobject:Ljava/lang/Object;

    monitor-enter v1

    .line 7020
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 7021
    iget-object v0, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    monitor-exit v1

    .line 7025
    :goto_0
    return-object v0

    .line 7023
    :cond_0
    monitor-exit v1

    .line 7025
    const/4 v0, 0x0

    goto :goto_0

    .line 7023
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public searchUser(Ljava/lang/String;)Lcom/samsung/shareshot/User;
    .locals 6
    .parameter "mac"

    .prologue
    .line 7128
    iget-object v4, p0, Lcom/android/camera/Camera$UserWrapper;->this$0:Lcom/android/camera/Camera;

    iget-object v5, v4, Lcom/android/camera/Camera;->sobject:Ljava/lang/Object;

    monitor-enter v5

    .line 7129
    const/4 v3, 0x0

    .line 7130
    .local v3, user:Lcom/samsung/shareshot/User;
    const/4 v2, 0x0

    .line 7131
    .local v2, searchInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v3, v0

    .line 7133
    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    .line 7135
    if-eqz v2, :cond_0

    .line 7136
    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7137
    monitor-exit v5

    move-object v4, v3

    .line 7141
    :goto_0
    return-object v4

    .line 7140
    :cond_1
    monitor-exit v5

    .line 7141
    const/4 v4, 0x0

    goto :goto_0

    .line 7140
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public selectUser(Lcom/samsung/shareshot/User;Z)V
    .locals 3
    .parameter "user"
    .parameter "act"

    .prologue
    .line 7087
    iget-object v1, p0, Lcom/android/camera/Camera$UserWrapper;->this$0:Lcom/android/camera/Camera;

    iget-object v2, v1, Lcom/android/camera/Camera;->sobject:Ljava/lang/Object;

    monitor-enter v2

    .line 7088
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 7089
    iget-object v1, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7090
    iget-object v1, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 7091
    .local v0, i:I
    if-eqz p2, :cond_1

    .line 7092
    iget-object v1, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->onSelected()V

    .line 7097
    .end local v0           #i:I
    :cond_0
    :goto_0
    monitor-exit v2

    .line 7098
    return-void

    .line 7094
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->onUnSelected()V

    goto :goto_0

    .line 7097
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUserList(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7044
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    iget-boolean v3, p0, Lcom/android/camera/Camera$UserWrapper;->mInit:Z

    if-nez v3, :cond_0

    .line 7045
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/Camera$UserWrapper;->mInit:Z

    .line 7046
    :cond_0
    iget-object v3, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    if-nez v3, :cond_1

    .line 7047
    const-string v3, "@"

    const-string v4, " mUserList is null "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7048
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/shareshot/User;

    .line 7049
    .local v2, user:Lcom/samsung/shareshot/User;
    iget-object v3, p0, Lcom/android/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/shareshot/User;->isUserSelected()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7051
    .end local v2           #user:Lcom/samsung/shareshot/User;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/Camera$UserWrapper;->this$0:Lcom/android/camera/Camera;

    iget-object v4, v3, Lcom/android/camera/Camera;->sobject:Ljava/lang/Object;

    monitor-enter v4

    .line 7052
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 7053
    iget-object v3, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-direct {p0, v3, p1}, Lcom/android/camera/Camera$UserWrapper;->compareListComponent(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 7054
    :cond_3
    const-string v3, "@"

    const-string v5, " mUserlsit != list so refresh view"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7055
    iget-object v3, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 7056
    iput-object p1, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    .line 7057
    iget-object v3, p0, Lcom/android/camera/Camera$UserWrapper;->this$0:Lcom/android/camera/Camera;

    iget-object v3, v3, Lcom/android/camera/Camera;->mActivieUserHandler:Landroid/os/Handler;

    const/16 v5, 0xcd

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7063
    :cond_4
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7064
    iget-object v3, p0, Lcom/android/camera/Camera$UserWrapper;->this$0:Lcom/android/camera/Camera;

    iget-object v3, v3, Lcom/android/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v4, 0x35

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/glwidget/TwGLShootAndShareMenu;

    .line 7065
    .local v0, ShareShot:Lcom/android/camera/glwidget/TwGLShootAndShareMenu;
    iget-object v3, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/glwidget/TwGLShootAndShareMenu;->setUserCount(I)V

    .line 7066
    iget-object v3, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/android/camera/Camera$UserWrapper;->mUserCountCheck:I

    .line 7067
    iget-object v3, p0, Lcom/android/camera/Camera$UserWrapper;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/Camera$UserWrapper;->this$0:Lcom/android/camera/Camera;

    iget-object v4, v4, Lcom/android/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraSettings;->setDeviceName(Lcom/samsung/shareshot/IShareShotService;)V

    .line 7068
    return-void

    .line 7060
    .end local v0           #ShareShot:Lcom/android/camera/glwidget/TwGLShootAndShareMenu;
    :cond_5
    :try_start_1
    iput-object p1, p0, Lcom/android/camera/Camera$UserWrapper;->mUserList:Ljava/util/List;

    .line 7061
    iget-object v3, p0, Lcom/android/camera/Camera$UserWrapper;->this$0:Lcom/android/camera/Camera;

    iget-object v3, v3, Lcom/android/camera/Camera;->mActivieUserHandler:Landroid/os/Handler;

    const/16 v5, 0xcd

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 7063
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
