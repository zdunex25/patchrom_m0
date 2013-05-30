.class Lcom/android/updater/OTAUpdaterActivity$3;
.super Ljava/lang/Object;
.source "OTAUpdaterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/OTAUpdaterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/OTAUpdaterActivity;

.field private final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/updater/OTAUpdaterActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/updater/OTAUpdaterActivity$3;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    iput-object p2, p0, Lcom/android/updater/OTAUpdaterActivity$3;->val$progressDialog:Landroid/app/ProgressDialog;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 188
    iget-object v0, p0, Lcom/android/updater/OTAUpdaterActivity$3;->this$0:Lcom/android/updater/OTAUpdaterActivity;

    #getter for: Lcom/android/updater/OTAUpdaterActivity;->dlTask:Lcom/android/updater/OTAUpdaterActivity$DownloadTask;
    invoke-static {v0}, Lcom/android/updater/OTAUpdaterActivity;->access$0(Lcom/android/updater/OTAUpdaterActivity;)Lcom/android/updater/OTAUpdaterActivity$DownloadTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/updater/OTAUpdaterActivity$DownloadTask;->cancel(Z)Z

    .line 189
    return-void
.end method
