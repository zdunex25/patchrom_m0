.class Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;
.super Ljava/lang/Thread;
.source "SanityCheckRootTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootTools/test/SanityCheckRootTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SanityCheckThread"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/stericson/RootTools/test/SanityCheckRootTools;


# direct methods
.method public constructor <init>(Lcom/stericson/RootTools/test/SanityCheckRootTools;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->this$0:Lcom/stericson/RootTools/test/SanityCheckRootTools;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 120
    iput-object p3, p0, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->mHandler:Landroid/os/Handler;

    .line 121
    return-void
.end method

.method static synthetic access$200(Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    return-void
.end method

.method private visualUpdate(ILjava/lang/String;)V
    .locals 3
    .parameter "action"
    .parameter "text"

    .prologue
    .line 338
    iget-object v2, p0, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 339
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 340
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "action"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    const-string v2, "text"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 343
    iget-object v2, p0, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 344
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 124
    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 138
    const/4 v14, 0x4

    const-string v15, "Testing Find Binary"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v9

    .line 140
    .local v9, result:Z
    const/4 v14, 0x3

    const-string v15, "[ Checking Root ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 141
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " k\n\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 143
    const/4 v14, 0x4

    const-string v15, "Testing file exists"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 144
    const/4 v14, 0x3

    const-string v15, "[ Checking Exists() ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 145
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "/system/sbin/["

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->exists(Ljava/lang/String;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " k\n\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 147
    const/4 v14, 0x4

    const-string v15, "Testing Is Access Given"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v9

    .line 149
    const/4 v14, 0x3

    const-string v15, "[ Checking for Access to Root ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 150
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " k\n\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 152
    const/4 v14, 0x4

    const-string v15, "Testing Remount"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 153
    const-string v14, "/system"

    const-string v15, "rw"

    invoke-static {v14, v15}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 154
    const/4 v14, 0x3

    const-string v15, "[ Remounting System as RW ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 155
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " k\n\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 157
    const/4 v14, 0x4

    const-string v15, "Testing CheckUtil"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 158
    const/4 v14, 0x3

    const-string v15, "[ Checking busybox is setup ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 159
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "busybox"

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->checkUtil(Ljava/lang/String;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " k\n\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 161
    const/4 v14, 0x4

    const-string v15, "Testing getBusyBoxVersion"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 162
    const/4 v14, 0x3

    const-string v15, "[ Checking busybox version ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 163
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "/system/bin/"

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " k\n\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 166
    const/4 v14, 0x4

    :try_start_0
    const-string v15, "Testing fixUtils"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 167
    const/4 v14, 0x3

    const-string v15, "[ Checking Utils ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 168
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "ls"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "rm"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-string v18, "ln"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    const-string v18, "dd"

    aput-object v18, v16, v17

    const/16 v17, 0x4

    const-string v18, "chmod"

    aput-object v18, v16, v17

    const/16 v17, 0x5

    const-string v18, "mount"

    aput-object v18, v16, v17

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->fixUtils([Ljava/lang/String;)Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " k\n\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 175
    :goto_0
    const/4 v14, 0x4

    :try_start_1
    const-string v15, "Testing getSymlink"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 176
    const/4 v14, 0x3

    const-string v15, "[ Checking [[ for symlink ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 177
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "/system/bin/[["

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->getSymlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " k\n\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 183
    :goto_1
    const/4 v14, 0x4

    const-string v15, "Testing getInode"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 184
    const/4 v14, 0x3

    const-string v15, "[ Checking Inodes ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 185
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "/system/bin/busybox"

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->getInode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " k\n\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 187
    const/4 v14, 0x4

    const-string v15, "Testing GetBusyBoxapplets"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 190
    const/4 v14, 0x3

    :try_start_2
    const-string v15, "[ Getting all available Busybox applets ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 191
    const-string v14, "/data/data/stericson.busybox.donate/files/bb"

    invoke-static {v14}, Lcom/stericson/RootTools/RootTools;->getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 192
    .local v1, applet:Ljava/lang/String;
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " k\n\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 195
    .end local v1           #applet:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 197
    .local v3, e1:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    .end local v3           #e1:Ljava/lang/Exception;
    :cond_0
    const/4 v14, 0x4

    const-string v15, "Testing getFilePermissionsSymlinks"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 201
    const-string v14, "/system/bin/busybox"

    invoke-static {v14}, Lcom/stericson/RootTools/RootTools;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/containers/Permissions;

    move-result-object v7

    .line 202
    .local v7, permissions:Lcom/stericson/RootTools/containers/Permissions;
    const/4 v14, 0x3

    const-string v15, "[ Checking busybox permissions and symlink ]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 204
    if-eqz v7, :cond_2

    .line 205
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Symlink: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Lcom/stericson/RootTools/containers/Permissions;->getSymlink()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " k\n\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 206
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Group Permissions: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Lcom/stericson/RootTools/containers/Permissions;->getGroupPermissions()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " k\n\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 207
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Owner Permissions: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Lcom/stericson/RootTools/containers/Permissions;->getOtherPermissions()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " k\n\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 208
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Permissions: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Lcom/stericson/RootTools/containers/Permissions;->getPermissions()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " k\n\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 209
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Lcom/stericson/RootTools/containers/Permissions;->getType()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " k\n\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 210
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "User Permissions: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Lcom/stericson/RootTools/containers/Permissions;->getUserPermissions()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " k\n\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 215
    :goto_3
    const/4 v14, 0x4

    const-string v15, "Testing df"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 216
    const-string v14, "/data"

    invoke-static {v14}, Lcom/stericson/RootTools/RootTools;->getSpace(Ljava/lang/String;)J

    move-result-wide v12

    .line 217
    .local v12, spaceValue:J
    const/4 v14, 0x3

    const-string v15, "[ Checking /data partition size]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 218
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "k\n\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 220
    const/4 v14, 0x4

    const-string v15, "Testing sendShell() w/ return array"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 222
    :try_start_3
    const-string v14, "ls /"

    const/4 v15, -0x1

    invoke-static {v14, v15}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v8

    .line 223
    .local v8, response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x3

    const-string v15, "[ Listing of / (passing a List)]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 224
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 225
    .local v6, line:Ljava/lang/String;
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/stericson/RootTools/exceptions/RootToolsException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_4

    .line 227
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #line:Ljava/lang/String;
    .end local v8           #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v2

    .line 228
    .local v2, e:Ljava/io/IOException;
    const/4 v14, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ERROR: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 335
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    :goto_5
    return-void

    .line 169
    .end local v7           #permissions:Lcom/stericson/RootTools/containers/Permissions;
    .end local v12           #spaceValue:J
    :catch_2
    move-exception v4

    .line 171
    .local v4, e2:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 178
    .end local v4           #e2:Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 180
    .restart local v4       #e2:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 212
    .end local v4           #e2:Ljava/lang/Exception;
    .restart local v7       #permissions:Lcom/stericson/RootTools/containers/Permissions;
    :cond_2
    const/4 v14, 0x3

    const-string v15, "Permissions == null k\n\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 230
    .restart local v12       #spaceValue:J
    :catch_4
    move-exception v2

    .line 231
    .local v2, e:Lcom/stericson/RootTools/exceptions/RootToolsException;
    const/4 v14, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DEV-DEFINED ERROR: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    goto :goto_5

    .line 233
    .end local v2           #e:Lcom/stericson/RootTools/exceptions/RootToolsException;
    :catch_5
    move-exception v2

    .line 234
    .local v2, e:Ljava/util/concurrent/TimeoutException;
    const/4 v14, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Timeout.. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    goto :goto_5

    .line 238
    .end local v2           #e:Ljava/util/concurrent/TimeoutException;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v8       #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/4 v14, 0x4

    const-string v15, "Testing sendShell() w/ callbacks"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 240
    const/4 v14, 0x3

    :try_start_4
    const-string v15, "\n[ Listing of / (callback)]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 241
    new-instance v10, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread$1;-><init>(Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;)V

    .line 263
    .local v10, result2:Lcom/stericson/RootTools/RootTools$Result;
    const-string v14, "ls /"

    const/4 v15, -0x1

    invoke-static {v14, v10, v15}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;Lcom/stericson/RootTools/RootTools$Result;I)Ljava/util/List;

    .line 264
    invoke-virtual {v10}, Lcom/stericson/RootTools/RootTools$Result;->getError()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lcom/stericson/RootTools/exceptions/RootToolsException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_9

    move-result v14

    if-nez v14, :cond_1

    .line 277
    const/4 v14, 0x4

    const-string v15, "Testing sendShell() for multiple commands"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 279
    const/4 v14, 0x3

    :try_start_5
    const-string v15, "\n[ ps + ls + date / (callback)]\n"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 280
    new-instance v11, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread$2;-><init>(Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Lcom/stericson/RootTools/exceptions/RootToolsException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_c

    .line 303
    .end local v10           #result2:Lcom/stericson/RootTools/RootTools$Result;
    .local v11, result2:Lcom/stericson/RootTools/RootTools$Result;
    const/4 v14, 0x6

    :try_start_6
    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "echo \"* PS:\""

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "ps"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "echo \"* LS:\""

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "ls"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "echo \"* DATE:\""

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "date"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-static {v14, v15, v11, v0}, Lcom/stericson/RootTools/RootTools;->sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;I)Ljava/util/List;

    .line 315
    invoke-virtual {v11}, Lcom/stericson/RootTools/RootTools$Result;->getError()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Lcom/stericson/RootTools/exceptions/RootToolsException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_d

    move-result v14

    if-nez v14, :cond_1

    .line 326
    .end local v11           #result2:Lcom/stericson/RootTools/RootTools$Result;
    :goto_6
    const/4 v14, 0x4

    const-string v15, "All tests complete."

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 327
    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 330
    :try_start_7
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->closeAllShells()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_5

    .line 331
    :catch_6
    move-exception v2

    .line 333
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 266
    .end local v2           #e:Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 267
    .restart local v2       #e:Ljava/io/IOException;
    const/4 v14, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ERROR: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 269
    .end local v2           #e:Ljava/io/IOException;
    :catch_8
    move-exception v2

    .line 270
    .local v2, e:Lcom/stericson/RootTools/exceptions/RootToolsException;
    const/4 v14, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DEV-DEFINED ERROR: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 272
    .end local v2           #e:Lcom/stericson/RootTools/exceptions/RootToolsException;
    :catch_9
    move-exception v2

    .line 273
    .local v2, e:Ljava/util/concurrent/TimeoutException;
    const/4 v14, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Timeout.. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 317
    .end local v2           #e:Ljava/util/concurrent/TimeoutException;
    .restart local v10       #result2:Lcom/stericson/RootTools/RootTools$Result;
    :catch_a
    move-exception v2

    .line 318
    .local v2, e:Ljava/io/IOException;
    :goto_7
    const/4 v14, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ERROR: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 319
    .end local v2           #e:Ljava/io/IOException;
    :catch_b
    move-exception v2

    .line 320
    .local v2, e:Lcom/stericson/RootTools/exceptions/RootToolsException;
    :goto_8
    const/4 v14, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DEV-DEFINED ERROR: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 321
    .end local v2           #e:Lcom/stericson/RootTools/exceptions/RootToolsException;
    :catch_c
    move-exception v2

    .line 322
    .local v2, e:Ljava/util/concurrent/TimeoutException;
    :goto_9
    const/4 v14, 0x2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Timeout.. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/stericson/RootTools/test/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 321
    .end local v2           #e:Ljava/util/concurrent/TimeoutException;
    .end local v10           #result2:Lcom/stericson/RootTools/RootTools$Result;
    .restart local v11       #result2:Lcom/stericson/RootTools/RootTools$Result;
    :catch_d
    move-exception v2

    move-object v10, v11

    .end local v11           #result2:Lcom/stericson/RootTools/RootTools$Result;
    .restart local v10       #result2:Lcom/stericson/RootTools/RootTools$Result;
    goto :goto_9

    .line 319
    .end local v10           #result2:Lcom/stericson/RootTools/RootTools$Result;
    .restart local v11       #result2:Lcom/stericson/RootTools/RootTools$Result;
    :catch_e
    move-exception v2

    move-object v10, v11

    .end local v11           #result2:Lcom/stericson/RootTools/RootTools$Result;
    .restart local v10       #result2:Lcom/stericson/RootTools/RootTools$Result;
    goto :goto_8

    .line 317
    .end local v10           #result2:Lcom/stericson/RootTools/RootTools$Result;
    .restart local v11       #result2:Lcom/stericson/RootTools/RootTools$Result;
    :catch_f
    move-exception v2

    move-object v10, v11

    .end local v11           #result2:Lcom/stericson/RootTools/RootTools$Result;
    .restart local v10       #result2:Lcom/stericson/RootTools/RootTools$Result;
    goto :goto_7
.end method
