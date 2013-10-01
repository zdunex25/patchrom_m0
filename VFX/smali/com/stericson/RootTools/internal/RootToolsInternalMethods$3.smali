.class Lcom/stericson/RootTools/internal/RootToolsInternalMethods$3;
.super Lcom/stericson/RootTools/execution/Command;
.source "RootToolsInternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;
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
    .line 642
    iput-object p1, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$3;->this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    invoke-direct {p0, p2, p3}, Lcom/stericson/RootTools/execution/Command;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public output(ILjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "line"

    .prologue
    .line 645
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 646
    const-string v1, "BusyBox"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/stericson/RootTools/internal/InternalVariables;->busyboxVersion:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, temp:[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    sput-object v1, Lcom/stericson/RootTools/internal/InternalVariables;->busyboxVersion:Ljava/lang/String;

    .line 651
    .end local v0           #temp:[Ljava/lang/String;
    :cond_0
    return-void
.end method
