.class public Lcom/stericson/RootTools/containers/RootClass$RootArgs;
.super Ljava/lang/Object;
.source "RootClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootTools/containers/RootClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RootArgs"
.end annotation


# instance fields
.field public args:[Ljava/lang/String;

.field final synthetic this$0:Lcom/stericson/RootTools/containers/RootClass;


# direct methods
.method public constructor <init>(Lcom/stericson/RootTools/containers/RootClass;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/stericson/RootTools/containers/RootClass$RootArgs;->this$0:Lcom/stericson/RootTools/containers/RootClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
