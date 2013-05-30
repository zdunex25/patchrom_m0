.class Lcom/sec/android/app/fm/ui/RenameFileDialog$3;
.super Ljava/lang/Object;
.source "RenameFileDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/ui/RenameFileDialog;->onAttachedToWindow()V
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
    .line 123
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog$3;->this$0:Lcom/sec/android/app/fm/ui/RenameFileDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog$3;->this$0:Lcom/sec/android/app/fm/ui/RenameFileDialog;

    #getter for: Lcom/sec/android/app/fm/ui/RenameFileDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/sec/android/app/fm/ui/RenameFileDialog;->access$000(Lcom/sec/android/app/fm/ui/RenameFileDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/RenameFileDialog$3;->this$0:Lcom/sec/android/app/fm/ui/RenameFileDialog;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 128
    return-void
.end method
