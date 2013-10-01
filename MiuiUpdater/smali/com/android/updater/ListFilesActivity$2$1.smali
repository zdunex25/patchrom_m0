.class Lcom/android/updater/ListFilesActivity$2$1;
.super Ljava/lang/Object;
.source "ListFilesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/ListFilesActivity$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/updater/ListFilesActivity$2;

.field private final synthetic val$file:Ljava/io/File;

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/updater/ListFilesActivity$2;Landroid/widget/EditText;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/updater/ListFilesActivity$2$1;->this$1:Lcom/android/updater/ListFilesActivity$2;

    iput-object p2, p0, Lcom/android/updater/ListFilesActivity$2$1;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/updater/ListFilesActivity$2$1;->val$file:Ljava/io/File;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x0

    .line 166
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 168
    iget-object v3, p0, Lcom/android/updater/ListFilesActivity$2$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, newName:Ljava/lang/String;
    const-string v3, ".zip"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/updater/Config;->DL_PATH_FILE:Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    .local v0, newFile:Ljava/io/File;
    iget-object v3, p0, Lcom/android/updater/ListFilesActivity$2$1;->val$file:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 173
    .local v2, renamed:Z
    if-eqz v2, :cond_1

    .line 174
    iget-object v3, p0, Lcom/android/updater/ListFilesActivity$2$1;->this$1:Lcom/android/updater/ListFilesActivity$2;

    #getter for: Lcom/android/updater/ListFilesActivity$2;->this$0:Lcom/android/updater/ListFilesActivity;
    invoke-static {v3}, Lcom/android/updater/ListFilesActivity$2;->access$0(Lcom/android/updater/ListFilesActivity$2;)Lcom/android/updater/ListFilesActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/updater/ListFilesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060021

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 179
    :goto_0
    iget-object v3, p0, Lcom/android/updater/ListFilesActivity$2$1;->this$1:Lcom/android/updater/ListFilesActivity$2;

    #getter for: Lcom/android/updater/ListFilesActivity$2;->this$0:Lcom/android/updater/ListFilesActivity;
    invoke-static {v3}, Lcom/android/updater/ListFilesActivity$2;->access$0(Lcom/android/updater/ListFilesActivity$2;)Lcom/android/updater/ListFilesActivity;

    move-result-object v3

    sget-object v4, Lcom/android/updater/Config;->DL_PATH_FILE:Ljava/io/File;

    #calls: Lcom/android/updater/ListFilesActivity;->listFiles(Ljava/io/File;)V
    invoke-static {v3, v4}, Lcom/android/updater/ListFilesActivity;->access$1(Lcom/android/updater/ListFilesActivity;Ljava/io/File;)V

    .line 180
    return-void

    .line 176
    :cond_1
    iget-object v3, p0, Lcom/android/updater/ListFilesActivity$2$1;->this$1:Lcom/android/updater/ListFilesActivity$2;

    #getter for: Lcom/android/updater/ListFilesActivity$2;->this$0:Lcom/android/updater/ListFilesActivity;
    invoke-static {v3}, Lcom/android/updater/ListFilesActivity$2;->access$0(Lcom/android/updater/ListFilesActivity$2;)Lcom/android/updater/ListFilesActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/updater/ListFilesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060022

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
