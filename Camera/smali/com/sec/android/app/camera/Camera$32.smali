.class Lcom/android/camera/Camera$32;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 7373
    iput-object p1, p0, Lcom/android/camera/Camera$32;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 7378
    iget-object v0, p0, Lcom/android/camera/Camera$32;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->dismissDialog(I)V

    .line 7379
    iget-object v0, p0, Lcom/android/camera/Camera$32;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showDialog(I)V

    .line 7380
    return-void
.end method
