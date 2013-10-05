.class Lcom/android/camera/HistoryActivity$1;
.super Landroid/os/Handler;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HistoryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/HistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/camera/HistoryActivity$1;->this$0:Lcom/android/camera/HistoryActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/camera/HistoryActivity$1;->this$0:Lcom/android/camera/HistoryActivity;

    #getter for: Lcom/android/camera/HistoryActivity;->mHistory:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/camera/HistoryActivity;->access$100(Lcom/android/camera/HistoryActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HistoryActivity$1;->this$0:Lcom/android/camera/HistoryActivity;

    iget-object v1, v1, Lcom/android/camera/HistoryActivity;->mAdapter:Lcom/android/camera/HistoryActivity$HistoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    return-void
.end method
