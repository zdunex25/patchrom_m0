.class Lcom/android/updater/ListFilesActivity$5;
.super Ljava/lang/Object;
.source "ListFilesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/ListFilesActivity;->installFileDialog(Landroid/content/Context;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$file:Ljava/io/File;

.field private final synthetic val$selectedOpts:[Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;[Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/updater/ListFilesActivity$5;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/updater/ListFilesActivity$5;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/android/updater/ListFilesActivity$5;->val$selectedOpts:[Z

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 237
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 239
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/updater/ListFilesActivity$5;->val$ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 240
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f06000f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 241
    const v1, 0x7f060011

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 242
    const v1, 0x7f060010

    new-instance v2, Lcom/android/updater/ListFilesActivity$5$1;

    iget-object v3, p0, Lcom/android/updater/ListFilesActivity$5;->val$file:Ljava/io/File;

    iget-object v4, p0, Lcom/android/updater/ListFilesActivity$5;->val$selectedOpts:[Z

    iget-object v5, p0, Lcom/android/updater/ListFilesActivity$5;->val$ctx:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/updater/ListFilesActivity$5$1;-><init>(Lcom/android/updater/ListFilesActivity$5;Ljava/io/File;[ZLandroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 298
    const v1, 0x7f06000d

    new-instance v2, Lcom/android/updater/ListFilesActivity$5$2;

    invoke-direct {v2, p0}, Lcom/android/updater/ListFilesActivity$5$2;-><init>(Lcom/android/updater/ListFilesActivity$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 304
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 305
    return-void
.end method
