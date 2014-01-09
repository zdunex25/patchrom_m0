.class Lcom/sec/android/app/camera/Camera$21;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5830
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$21;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-object p2, p0, Lcom/sec/android/app/camera/Camera$21;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 5835
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$21;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->dismissDialog(I)V

    .line 5836
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$21;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->showDialog(I)V

    .line 5837
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$21;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    .line 5838
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$21;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$21;->val$et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    .line 5839
    return-void
.end method
