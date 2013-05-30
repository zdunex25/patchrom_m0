.class Lcom/android/updater/OTAUpdaterActivity$8;
.super Ljava/lang/Object;
.source "OTAUpdaterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/OTAUpdaterActivity;->showUpdateDialog(Lcom/android/updater/RomInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/OTAUpdaterActivity;

.field private final synthetic val$info:Lcom/android/updater/RomInfo;


# direct methods
.method constructor <init>(Lcom/android/updater/OTAUpdaterActivity;Lcom/android/updater/RomInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/updater/OTAUpdaterActivity$8;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    iput-object p2, p0, Lcom/android/updater/OTAUpdaterActivity$8;->val$info:Lcom/android/updater/RomInfo;

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/updater/OTAUpdaterActivity$8;)Lcom/android/updater/OTAUpdaterActivity;
    .locals 1
    .parameter

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$8;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v6, 0x0

    .line 373
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 375
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/updater/OTAUpdaterActivity$8;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 376
    .local v1, progressDialog:Landroid/app/ProgressDialog;
    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Changelog: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/updater/OTAUpdaterActivity$8;->val$info:Lcom/android/updater/RomInfo;

    iget-object v3, v3, Lcom/android/updater/RomInfo;->changelog:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 378
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 379
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 380
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 382
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/updater/Config;->DL_PATH_FILE:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/updater/OTAUpdaterActivity$8;->val$info:Lcom/android/updater/RomInfo;

    iget-object v5, v5, Lcom/android/updater/RomInfo;->romName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/updater/OTAUpdaterActivity$8;->val$info:Lcom/android/updater/RomInfo;

    iget-object v5, v5, Lcom/android/updater/RomInfo;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/updater/Slugify;->slugify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 383
    .local v0, file:Ljava/io/File;
    iget-object v2, p0, Lcom/android/updater/OTAUpdaterActivity$8;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    new-instance v3, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;

    iget-object v4, p0, Lcom/android/updater/OTAUpdaterActivity$8;->val$info:Lcom/android/updater/RomInfo;

    invoke-direct {v3, v1, v4, v0}, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;-><init>(Landroid/app/ProgressDialog;Lcom/android/updater/RomInfo;Ljava/io/File;)V

    #setter for: Lcom/android/updater/OTAUpdaterActivity;->dlTask:Lcom/android/updater/OTAUpdaterActivity$DownloadTask;
    invoke-static {v2, v3}, Lcom/android/updater/OTAUpdaterActivity;->access$8(Lcom/android/updater/OTAUpdaterActivity;Lcom/android/updater/OTAUpdaterActivity$DownloadTask;)V

    .line 385
    const/4 v2, -0x2

    iget-object v3, p0, Lcom/android/updater/OTAUpdaterActivity$8;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    const v4, 0x7f06000d

    invoke-virtual {v3, v4}, Lcom/android/updater/OTAUpdaterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/updater/OTAUpdaterActivity$8$1;

    invoke-direct {v4, p0, v1}, Lcom/android/updater/OTAUpdaterActivity$8$1;-><init>(Lcom/android/updater/OTAUpdaterActivity$8;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 393
    iget-object v2, p0, Lcom/android/updater/OTAUpdaterActivity$8;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    #getter for: Lcom/android/updater/OTAUpdaterActivity;->dlTask:Lcom/android/updater/OTAUpdaterActivity$DownloadTask;
    invoke-static {v2}, Lcom/android/updater/OTAUpdaterActivity;->access$0(Lcom/android/updater/OTAUpdaterActivity;)Lcom/android/updater/OTAUpdaterActivity$DownloadTask;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 394
    return-void
.end method
