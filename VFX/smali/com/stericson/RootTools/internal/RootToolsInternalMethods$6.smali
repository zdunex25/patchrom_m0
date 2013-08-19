.class Lcom/stericson/RootTools/internal/RootToolsInternalMethods$6;
.super Lcom/stericson/RootTools/execution/Command;
.source "RootToolsInternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/containers/Permissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;


# direct methods
.method varargs constructor <init>(Lcom/stericson/RootTools/internal/RootToolsInternalMethods;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 808
    iput-object p1, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$6;->this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    invoke-direct {p0, p2, p3}, Lcom/stericson/RootTools/execution/Command;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public output(ILjava/lang/String;)V
    .locals 6
    .parameter "id"
    .parameter "line"

    .prologue
    .line 811
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 812
    const-string v3, ""

    .line 814
    .local v3, symlink_final:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 815
    .local v1, lineArray:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    .line 839
    .end local v1           #lineArray:[Ljava/lang/String;
    .end local v3           #symlink_final:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 819
    .restart local v1       #lineArray:[Ljava/lang/String;
    .restart local v3       #symlink_final:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 822
    :try_start_0
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 823
    .local v2, symlink:[Ljava/lang/String;
    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    aget-object v4, v2, v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 824
    const-string v4, "Symlink found."

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 825
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 831
    .end local v2           #symlink:[Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$6;->this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    invoke-virtual {v4, p2}, Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getPermissions(Ljava/lang/String;)Lcom/stericson/RootTools/containers/Permissions;

    move-result-object v4

    sput-object v4, Lcom/stericson/RootTools/internal/InternalVariables;->permissions:Lcom/stericson/RootTools/containers/Permissions;

    .line 832
    sget-object v4, Lcom/stericson/RootTools/internal/InternalVariables;->permissions:Lcom/stericson/RootTools/containers/Permissions;

    if-eqz v4, :cond_0

    .line 833
    sget-object v4, Lcom/stericson/RootTools/internal/InternalVariables;->permissions:Lcom/stericson/RootTools/containers/Permissions;

    invoke-virtual {v4, v3}, Lcom/stericson/RootTools/containers/Permissions;->setSymlink(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 835
    :catch_0
    move-exception v0

    .line 836
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 827
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_1
.end method
