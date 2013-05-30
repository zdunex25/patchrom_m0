.class Lcom/sec/android/app/fm/ui/RenameDialog$1;
.super Ljava/lang/Object;
.source "RenameDialog.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/ui/RenameDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/ui/RenameDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/ui/RenameDialog;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/RenameDialog$1;->this$0:Lcom/sec/android/app/fm/ui/RenameDialog;

    iput-object p2, p0, Lcom/sec/android/app/fm/ui/RenameDialog$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v3, 0x1

    const/16 v5, 0xc

    .line 78
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v0

    if-ne v0, v5, :cond_0

    sub-int v0, p6, p5

    if-eq v0, v3, :cond_0

    sub-int v0, p6, p5

    if-eq v0, v5, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog$1;->this$0:Lcom/sec/android/app/fm/ui/RenameDialog;

    #getter for: Lcom/sec/android/app/fm/ui/RenameDialog;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/fm/ui/RenameDialog;->access$000(Lcom/sec/android/app/fm/ui/RenameDialog;)Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/RenameDialog$1;->val$context:Landroid/content/Context;

    const v2, 0x7f0a00b5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog$1;->this$0:Lcom/sec/android/app/fm/ui/RenameDialog;

    #getter for: Lcom/sec/android/app/fm/ui/RenameDialog;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/fm/ui/RenameDialog;->access$000(Lcom/sec/android/app/fm/ui/RenameDialog;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
