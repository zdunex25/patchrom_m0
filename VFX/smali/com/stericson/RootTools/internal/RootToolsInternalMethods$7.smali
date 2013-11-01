.class Lcom/stericson/RootTools/internal/RootToolsInternalMethods$7;
.super Lcom/stericson/RootTools/execution/Command;
.source "RootToolsInternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/internal/RootToolsInternalMethods;->getSpace(Ljava/lang/String;)J
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
    .line 954
    iput-object p1, p0, Lcom/stericson/RootTools/internal/RootToolsInternalMethods$7;->this$0:Lcom/stericson/RootTools/internal/RootToolsInternalMethods;

    invoke-direct {p0, p2, p3}, Lcom/stericson/RootTools/execution/Command;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public output(ILjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "line"

    .prologue
    .line 958
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 959
    sget-object v0, Lcom/stericson/RootTools/internal/InternalVariables;->getSpaceFor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stericson/RootTools/internal/InternalVariables;->space:[Ljava/lang/String;

    .line 963
    :cond_0
    return-void
.end method
