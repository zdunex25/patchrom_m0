.class Lcom/android/gallery3d/app/PhotoPage$8;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 960
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmDialogDismissed(Z)V
    .locals 1
    .parameter "confirmed"

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$400(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 975
    return-void
.end method

.method public onConfirmDialogShown()V
    .locals 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$200(Lcom/android/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 970
    return-void
.end method

.method public onProgressComplete(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 965
    return-void
.end method

.method public onProgressStart()V
    .locals 0

    .prologue
    .line 978
    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 962
    return-void
.end method
