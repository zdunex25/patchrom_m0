.class Lcom/stericson/RootToolsTests/SanityCheckRootTools$1;
.super Ljava/lang/Object;
.source "SanityCheckRootTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootToolsTests/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootToolsTests/SanityCheckRootTools;


# direct methods
.method constructor <init>(Lcom/stericson/RootToolsTests/SanityCheckRootTools;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools$1;->this$0:Lcom/stericson/RootToolsTests/SanityCheckRootTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/stericson/RootToolsTests/SanityCheckRootTools$1;->this$0:Lcom/stericson/RootToolsTests/SanityCheckRootTools;

    #getter for: Lcom/stericson/RootToolsTests/SanityCheckRootTools;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/stericson/RootToolsTests/SanityCheckRootTools;->access$100(Lcom/stericson/RootToolsTests/SanityCheckRootTools;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 134
    return-void
.end method
