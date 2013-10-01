.class Lcom/android/gallery3d/app/TrimVideo$4$1;
.super Ljava/lang/Object;
.source "TrimVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/TrimVideo$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/TrimVideo$4;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/TrimVideo$4;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/gallery3d/app/TrimVideo$4$1;->this$1:Lcom/android/gallery3d/app/TrimVideo$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 307
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo$4$1;->this$1:Lcom/android/gallery3d/app/TrimVideo$4;

    iget-object v1, v1, Lcom/android/gallery3d/app/TrimVideo$4;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/TrimVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/gallery3d/app/TrimVideo$4$1;->this$1:Lcom/android/gallery3d/app/TrimVideo$4;

    iget-object v3, v3, Lcom/android/gallery3d/app/TrimVideo$4;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    const v4, 0x7f0a0222

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/TrimVideo;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/TrimVideo$4$1;->this$1:Lcom/android/gallery3d/app/TrimVideo$4;

    iget-object v3, v3, Lcom/android/gallery3d/app/TrimVideo$4;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    #getter for: Lcom/android/gallery3d/app/TrimVideo;->saveFolderName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/gallery3d/app/TrimVideo;->access$900(Lcom/android/gallery3d/app/TrimVideo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 313
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo$4$1;->this$1:Lcom/android/gallery3d/app/TrimVideo$4;

    iget-object v1, v1, Lcom/android/gallery3d/app/TrimVideo$4;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    iget-object v1, v1, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo$4$1;->this$1:Lcom/android/gallery3d/app/TrimVideo$4;

    iget-object v1, v1, Lcom/android/gallery3d/app/TrimVideo$4;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    iget-object v1, v1, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 315
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo$4$1;->this$1:Lcom/android/gallery3d/app/TrimVideo$4;

    iget-object v1, v1, Lcom/android/gallery3d/app/TrimVideo$4;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    .line 317
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo$4$1;->this$1:Lcom/android/gallery3d/app/TrimVideo$4;

    iget-object v1, v1, Lcom/android/gallery3d/app/TrimVideo$4;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    #getter for: Lcom/android/gallery3d/app/TrimVideo;->mDstFile:Ljava/io/File;
    invoke-static {v1}, Lcom/android/gallery3d/app/TrimVideo;->access$500(Lcom/android/gallery3d/app/TrimVideo;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const-string v1, "android.intent.extra.finishOnCompletion"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 320
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo$4$1;->this$1:Lcom/android/gallery3d/app/TrimVideo$4;

    iget-object v1, v1, Lcom/android/gallery3d/app/TrimVideo$4;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/TrimVideo;->startActivity(Landroid/content/Intent;)V

    .line 321
    iget-object v1, p0, Lcom/android/gallery3d/app/TrimVideo$4$1;->this$1:Lcom/android/gallery3d/app/TrimVideo$4;

    iget-object v1, v1, Lcom/android/gallery3d/app/TrimVideo$4;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/TrimVideo;->finish()V

    .line 323
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
