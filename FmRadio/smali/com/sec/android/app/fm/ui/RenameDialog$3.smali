.class Lcom/sec/android/app/fm/ui/RenameDialog$3;
.super Ljava/lang/Object;
.source "RenameDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/ui/RenameDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/RenameDialog$3;->this$0:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 135
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog$3;->this$0:Lcom/sec/android/app/fm/ui/RenameDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/RenameDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 137
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
