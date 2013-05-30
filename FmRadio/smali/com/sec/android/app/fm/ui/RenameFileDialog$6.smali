.class Lcom/sec/android/app/fm/ui/RenameFileDialog$6;
.super Ljava/lang/Object;
.source "RenameFileDialog.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/ui/RenameFileDialog;->getEditTextFilter(Landroid/content/Context;)[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/ui/RenameFileDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/ui/RenameFileDialog;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog$6;->this$0:Lcom/sec/android/app/fm/ui/RenameFileDialog;

    iput-object p2, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog$6;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const v5, 0x7f0a00b6

    const/16 v8, 0x32

    const/4 v6, 0x1

    .line 184
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-static {}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->access$300()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->access$300()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 186
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog$6;->this$0:Lcom/sec/android/app/fm/ui/RenameFileDialog;

    #getter for: Lcom/sec/android/app/fm/ui/RenameFileDialog;->mToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->access$400(Lcom/sec/android/app/fm/ui/RenameFileDialog;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Toast;->setText(I)V

    .line 187
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog$6;->this$0:Lcom/sec/android/app/fm/ui/RenameFileDialog;

    #getter for: Lcom/sec/android/app/fm/ui/RenameFileDialog;->mToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->access$400(Lcom/sec/android/app/fm/ui/RenameFileDialog;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 188
    const-string v3, ""

    .line 209
    :goto_1
    return-object v3

    .line 184
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_1
    if-eqz p3, :cond_5

    .line 193
    const/4 v1, 0x0

    :goto_2
    if-ge v1, p3, :cond_5

    .line 194
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 195
    .local v2, value:I
    const v3, 0xfe000

    if-lt v2, v3, :cond_2

    const v3, 0xff000

    if-lt v2, v3, :cond_3

    :cond_2
    const v3, 0xe63e

    if-lt v2, v3, :cond_4

    const v3, 0xe757

    if-gt v2, v3, :cond_4

    .line 196
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog$6;->this$0:Lcom/sec/android/app/fm/ui/RenameFileDialog;

    #getter for: Lcom/sec/android/app/fm/ui/RenameFileDialog;->mToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->access$400(Lcom/sec/android/app/fm/ui/RenameFileDialog;)Landroid/widget/Toast;

    move-result-object v3

    const v4, 0x7f0a00b6

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(I)V

    .line 197
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog$6;->this$0:Lcom/sec/android/app/fm/ui/RenameFileDialog;

    #getter for: Lcom/sec/android/app/fm/ui/RenameFileDialog;->mToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->access$400(Lcom/sec/android/app/fm/ui/RenameFileDialog;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 198
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 193
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 201
    .end local v2           #value:I
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    if-ne v3, v8, :cond_6

    sub-int v3, p6, p5

    if-eq v3, v6, :cond_6

    .line 206
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog$6;->this$0:Lcom/sec/android/app/fm/ui/RenameFileDialog;

    #getter for: Lcom/sec/android/app/fm/ui/RenameFileDialog;->mToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->access$400(Lcom/sec/android/app/fm/ui/RenameFileDialog;)Landroid/widget/Toast;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog$6;->val$context:Landroid/content/Context;

    const v5, 0x7f0a00b5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog$6;->this$0:Lcom/sec/android/app/fm/ui/RenameFileDialog;

    #getter for: Lcom/sec/android/app/fm/ui/RenameFileDialog;->mToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->access$400(Lcom/sec/android/app/fm/ui/RenameFileDialog;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 209
    :cond_6
    const/4 v3, 0x0

    goto :goto_1
.end method
