.class Lcom/android/updater/ListFilesActivity$2;
.super Ljava/lang/Object;
.source "ListFilesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/ListFilesActivity;->processItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/ListFilesActivity;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/updater/ListFilesActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/updater/ListFilesActivity$2;->this$0:Lcom/android/updater/ListFilesActivity;

    iput p2, p0, Lcom/android/updater/ListFilesActivity$2;->val$pos:I

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/updater/ListFilesActivity$2;)Lcom/android/updater/ListFilesActivity;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/updater/ListFilesActivity$2;->this$0:Lcom/android/updater/ListFilesActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x0

    .line 146
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 148
    iget-object v5, p0, Lcom/android/updater/ListFilesActivity$2;->this$0:Lcom/android/updater/ListFilesActivity;

    #getter for: Lcom/android/updater/ListFilesActivity;->pathList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/updater/ListFilesActivity;->access$2(Lcom/android/updater/ListFilesActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Lcom/android/updater/ListFilesActivity$2;->val$pos:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 149
    .local v4, path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, file:Ljava/io/File;
    packed-switch p2, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 154
    :pswitch_0
    iget-object v5, p0, Lcom/android/updater/ListFilesActivity$2;->this$0:Lcom/android/updater/ListFilesActivity;

    invoke-static {v5, v2}, Lcom/android/updater/ListFilesActivity;->installFileDialog(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0

    .line 157
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/updater/ListFilesActivity$2;->this$0:Lcom/android/updater/ListFilesActivity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f06000b

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 159
    const v5, 0x7f06000c

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 161
    new-instance v3, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/updater/ListFilesActivity$2;->this$0:Lcom/android/updater/ListFilesActivity;

    invoke-direct {v3, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 162
    .local v3, input:Landroid/widget/EditText;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 163
    const v5, 0x7f06000e

    new-instance v6, Lcom/android/updater/ListFilesActivity$2$1;

    invoke-direct {v6, p0, v3, v2}, Lcom/android/updater/ListFilesActivity$2$1;-><init>(Lcom/android/updater/ListFilesActivity$2;Landroid/widget/EditText;Ljava/io/File;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    const v5, 0x7f06000d

    new-instance v6, Lcom/android/updater/ListFilesActivity$2$2;

    invoke-direct {v6, p0}, Lcom/android/updater/ListFilesActivity$2$2;-><init>(Lcom/android/updater/ListFilesActivity$2;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 192
    .end local v0           #alert:Landroid/app/AlertDialog$Builder;
    .end local v3           #input:Landroid/widget/EditText;
    :pswitch_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    .line 194
    .local v1, deleted:Z
    if-eqz v1, :cond_0

    .line 195
    iget-object v5, p0, Lcom/android/updater/ListFilesActivity$2;->this$0:Lcom/android/updater/ListFilesActivity;

    invoke-virtual {v5}, Lcom/android/updater/ListFilesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060023

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 200
    :goto_1
    iget-object v5, p0, Lcom/android/updater/ListFilesActivity$2;->this$0:Lcom/android/updater/ListFilesActivity;

    sget-object v6, Lcom/android/updater/Config;->DL_PATH_FILE:Ljava/io/File;

    #calls: Lcom/android/updater/ListFilesActivity;->listFiles(Ljava/io/File;)V
    invoke-static {v5, v6}, Lcom/android/updater/ListFilesActivity;->access$1(Lcom/android/updater/ListFilesActivity;Ljava/io/File;)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v5, p0, Lcom/android/updater/ListFilesActivity$2;->this$0:Lcom/android/updater/ListFilesActivity;

    invoke-virtual {v5}, Lcom/android/updater/ListFilesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060024

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
