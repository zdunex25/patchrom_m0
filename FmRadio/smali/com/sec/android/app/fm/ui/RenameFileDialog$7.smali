.class Lcom/sec/android/app/fm/ui/RenameFileDialog$7;
.super Ljava/lang/Object;
.source "RenameFileDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/ui/RenameFileDialog;->setFileName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/ui/RenameFileDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/ui/RenameFileDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog$7;->this$0:Lcom/sec/android/app/fm/ui/RenameFileDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog$7;->this$0:Lcom/sec/android/app/fm/ui/RenameFileDialog;

    #getter for: Lcom/sec/android/app/fm/ui/RenameFileDialog;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->access$100(Lcom/sec/android/app/fm/ui/RenameFileDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 230
    return-void
.end method
