.class Lcom/android/camera/Camera$27;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7243
    iput-object p1, p0, Lcom/android/camera/Camera$27;->this$0:Lcom/android/camera/Camera;

    iput-object p2, p0, Lcom/android/camera/Camera$27;->val$et:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 7248
    iget-object v0, p0, Lcom/android/camera/Camera$27;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->dismissDialog(I)V

    .line 7249
    iget-object v0, p0, Lcom/android/camera/Camera$27;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showDialog(I)V

    .line 7250
    iget-object v0, p0, Lcom/android/camera/Camera$27;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/Camera;->mNameChanged:Z

    .line 7251
    iget-object v0, p0, Lcom/android/camera/Camera$27;->this$0:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera$27;->val$et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/Camera;->mName:Ljava/lang/String;

    .line 7252
    return-void
.end method
