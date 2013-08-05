.class public final Lcom/stericson/RootTools/RootTools;
.super Ljava/lang/Object;
.source "RootTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/RootTools/RootTools$Result;
    }
.end annotation


# static fields
.field public static customShell:Ljava/lang/String;

.field public static debugMode:Z

.field public static lastExitCode:I

.field public static lastFoundBinaryPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static rim:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

.field public static shellDelay:I

.field public static useRoot:Z

.field public static utilPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/stericson/RootTools/RootTools;->rim:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    .line 84
    sput-boolean v1, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    .line 92
    const-string v0, ""

    sput-object v0, Lcom/stericson/RootTools/RootTools;->customShell:Ljava/lang/String;

    .line 98
    sput v1, Lcom/stericson/RootTools/RootTools;->shellDelay:I

    .line 111
    const/4 v0, 0x1

    sput-boolean v0, Lcom/stericson/RootTools/RootTools;->useRoot:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 956
    return-void
.end method

.method public static checkUtil(Ljava/lang/String;)Z
    .locals 1
    .parameter "util"

    .prologue
    .line 133
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static closeAllShells()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->closeAll()V

    .line 145
    return-void
.end method

.method public static closeCustomShell()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->closeCustomShell()V

    .line 156
    return-void
.end method

.method public static closeShell(Z)V
    .locals 0
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    if-eqz p0, :cond_0

    .line 170
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->closeRootShell()V

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-static {}, Lcom/stericson/RootTools/execution/Shell;->closeShell()V

    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 1
    .parameter "source"
    .parameter "destination"
    .parameter "remountAsRw"
    .parameter "preserveFileAttributes"

    .prologue
    .line 192
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 220
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->exists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static findBinary(Ljava/lang/String;)Z
    .locals 1
    .parameter "binaryName"

    .prologue
    .line 269
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->findBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static fixUtil(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "util"
    .parameter "utilPath"

    .prologue
    .line 236
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->fixUtil(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public static fixUtils([Ljava/lang/String;)Z
    .locals 1
    .parameter "utils"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 255
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->fixUtils([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getBusyBoxApplets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 300
    const-string v0, ""

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 317
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getBusyBoxVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    const-string v0, ""

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 279
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomShell(Ljava/lang/String;)Lcom/stericson/RootTools/execution/Shell;
    .locals 1
    .parameter "shellPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 354
    const/16 v0, 0x2710

    invoke-static {p0, v0}, Lcom/stericson/RootTools/RootTools;->getCustomShell(Ljava/lang/String;I)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomShell(Ljava/lang/String;I)Lcom/stericson/RootTools/execution/Shell;
    .locals 1
    .parameter "shellPath"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-static {p0, p1}, Lcom/stericson/RootTools/execution/Shell;->startCustomShell(Ljava/lang/String;I)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v0

    return-object v0
.end method

.method public static getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/containers/Permissions;
    .locals 1
    .parameter "file"

    .prologue
    .line 368
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/containers/Permissions;

    move-result-object v0

    return-object v0
.end method

.method public static getInode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "file"

    .prologue
    .line 381
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getInode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/stericson/RootTools/RootTools;->rim:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getInstance()V

    .line 74
    sget-object v0, Lcom/stericson/RootTools/RootTools;->rim:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    .line 76
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/stericson/RootTools/RootTools;->rim:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    goto :goto_0
.end method

.method public static getMountedAs(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 408
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getMountedAs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMounts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/stericson/RootTools/containers/Mount;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 395
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getMounts()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getPath()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 419
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getPath()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getShell(Z)Lcom/stericson/RootTools/execution/Shell;
    .locals 1
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 482
    const/16 v0, 0x2710

    invoke-static {p0, v0}, Lcom/stericson/RootTools/RootTools;->getShell(ZI)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v0

    return-object v0
.end method

.method public static getShell(ZI)Lcom/stericson/RootTools/execution/Shell;
    .locals 1
    .parameter "root"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 465
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/stericson/RootTools/RootTools;->getShell(ZII)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v0

    return-object v0
.end method

.method public static getShell(ZII)Lcom/stericson/RootTools/execution/Shell;
    .locals 1
    .parameter "root"
    .parameter "timeout"
    .parameter "retry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/stericson/RootTools/exceptions/RootDeniedException;
        }
    .end annotation

    .prologue
    .line 442
    if-eqz p0, :cond_0

    .line 443
    invoke-static {p1}, Lcom/stericson/RootTools/execution/Shell;->startRootShell(I)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v0

    .line 445
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/stericson/RootTools/execution/Shell;->startShell(I)Lcom/stericson/RootTools/execution/Shell;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSpace(Ljava/lang/String;)J
    .locals 2
    .parameter "path"

    .prologue
    .line 495
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getSpace(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSymlink(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "file"

    .prologue
    .line 509
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getSymlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSymlinks(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/stericson/RootTools/containers/Symlink;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 526
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getSymlinks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getWorkingToolbox()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getWorkingToolbox()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasEnoughSpaceOnSdCard(J)Z
    .locals 1
    .parameter "updateSize"

    .prologue
    .line 550
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->hasEnoughSpaceOnSdCard(J)Z

    move-result v0

    return v0
.end method

.method public static hasUtil(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "util"
    .parameter "box"

    .prologue
    .line 563
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static installBinary(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "sourceId"
    .parameter "binaryName"

    .prologue
    .line 601
    const-string v0, "700"

    invoke-static {p0, p1, p2, v0}, Lcom/stericson/RootTools/RootTools;->installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "sourceId"
    .parameter "destName"
    .parameter "mode"

    .prologue
    .line 583
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAccessGiven()Z
    .locals 1

    .prologue
    .line 636
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->isAccessGiven()Z

    move-result v0

    return v0
.end method

.method public static isAppletAvailable(Ljava/lang/String;)Z
    .locals 1
    .parameter "applet"

    .prologue
    .line 627
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/stericson/RootTools/RootTools;->isAppletAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAppletAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "applet"
    .parameter "path"

    .prologue
    .line 615
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->isAppletAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBusyboxAvailable()Z
    .locals 1

    .prologue
    .line 643
    const-string v0, "busybox"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->findBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNativeToolsReady(ILandroid/content/Context;)Z
    .locals 1
    .parameter "nativeToolsId"
    .parameter "context"

    .prologue
    .line 647
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->isNativeToolsReady(ILandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isProcessRunning(Ljava/lang/String;)Z
    .locals 1
    .parameter "processName"

    .prologue
    .line 661
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->isProcessRunning(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRootAvailable()Z
    .locals 1

    .prologue
    .line 668
    const-string v0, "su"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->findBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static killProcess(Ljava/lang/String;)Z
    .locals 1
    .parameter "processName"

    .prologue
    .line 680
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->killProcess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 1012
    const/4 v0, 0x3

    invoke-static {v1, p0, v0, v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    .line 1013
    return-void
.end method

.method public static log(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 1
    .parameter "msg"
    .parameter "type"
    .parameter "e"

    .prologue
    .line 1055
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    .line 1056
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 1032
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    .line 1033
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 1
    .parameter "TAG"
    .parameter "msg"
    .parameter "type"
    .parameter "e"

    .prologue
    .line 1080
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1081
    sget-boolean v0, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v0, :cond_1

    .line 1082
    if-nez p0, :cond_0

    .line 1083
    const-string p0, "RootTools v2.6"

    .line 1086
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1100
    :cond_1
    :goto_0
    return-void

    .line 1089
    :pswitch_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1092
    :pswitch_1
    invoke-static {p0, p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1095
    :pswitch_2
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1086
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static offerBusyBox(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 1
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 704
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->offerBusyBox(Landroid/app/Activity;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static offerBusyBox(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 690
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->offerBusyBox(Landroid/app/Activity;)V

    .line 691
    return-void
.end method

.method public static offerSuperUser(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 1
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 728
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->offerSuperUser(Landroid/app/Activity;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static offerSuperUser(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 714
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->offerSuperUser(Landroid/app/Activity;)V

    .line 715
    return-void
.end method

.method public static remount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "file"
    .parameter "mountType"

    .prologue
    .line 749
    new-instance v0, Lcom/stericson/RootTools/internal/Remounter;

    invoke-direct {v0}, Lcom/stericson/RootTools/internal/Remounter;-><init>()V

    .line 751
    .local v0, remounter:Lcom/stericson/RootTools/internal/Remounter;
    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/internal/Remounter;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static restartAndroid()V
    .locals 1

    .prologue
    .line 762
    const-string v0, "Restart Android"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 763
    const-string v0, "zygote"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->killProcess(Ljava/lang/String;)Z

    .line 764
    return-void
.end method

.method public static runBinary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "binaryName"
    .parameter "parameter"

    .prologue
    .line 778
    new-instance v0, Lcom/stericson/RootTools/internal/Runner;

    invoke-direct {v0, p0, p1, p2}, Lcom/stericson/RootTools/internal/Runner;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    .local v0, runner:Lcom/stericson/RootTools/internal/Runner;
    invoke-virtual {v0}, Lcom/stericson/RootTools/internal/Runner;->start()V

    .line 780
    return-void
.end method

.method public static runShellCommand(Lcom/stericson/RootTools/execution/Shell;Lcom/stericson/RootTools/execution/Command;)V
    .locals 0
    .parameter "shell"
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 797
    invoke-virtual {p0, p1}, Lcom/stericson/RootTools/execution/Shell;->add(Lcom/stericson/RootTools/execution/Command;)Lcom/stericson/RootTools/execution/Command;

    .line 798
    return-void
.end method

.method public static sendShell(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .parameter "command"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/stericson/RootTools/exceptions/RootToolsException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 953
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;Lcom/stericson/RootTools/RootTools$Result;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static sendShell(Ljava/lang/String;Lcom/stericson/RootTools/RootTools$Result;I)Ljava/util/List;
    .locals 2
    .parameter "command"
    .parameter "result"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stericson/RootTools/RootTools$Result;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/stericson/RootTools/exceptions/RootToolsException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 925
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p0, v0, v1

    invoke-static {v0, v1, p1, p2}, Lcom/stericson/RootTools/RootTools;->sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static sendShell([Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .parameter "commands"
    .parameter "sleepTime"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/stericson/RootTools/exceptions/RootToolsException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 893
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/stericson/RootTools/RootTools;->sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;I)Ljava/util/List;
    .locals 1
    .parameter "commands"
    .parameter "sleepTime"
    .parameter "result"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Lcom/stericson/RootTools/RootTools$Result;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/stericson/RootTools/exceptions/RootToolsException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 827
    sget-boolean v0, Lcom/stericson/RootTools/RootTools;->useRoot:Z

    invoke-static {p0, p1, p2, v0, p3}, Lcom/stericson/RootTools/RootTools;->sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;ZI)Ljava/util/List;
    .locals 6
    .parameter "commands"
    .parameter "sleepTime"
    .parameter "result"
    .parameter "useRoot"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Lcom/stericson/RootTools/RootTools$Result;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/stericson/RootTools/exceptions/RootToolsException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 862
    new-instance v0, Lcom/stericson/RootTools/execution/Executer;

    invoke-direct {v0}, Lcom/stericson/RootTools/execution/Executer;-><init>()V

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/stericson/RootTools/execution/Executer;->sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setRim(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;)V
    .locals 0
    .parameter "rim"

    .prologue
    .line 68
    sput-object p0, Lcom/stericson/RootTools/RootTools;->rim:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    .line 69
    return-void
.end method


# virtual methods
.method public deleteFileOrDirectory(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "target"
    .parameter "remountAsRw"

    .prologue
    .line 205
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getInternals()Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->deleteFileOrDirectory(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
