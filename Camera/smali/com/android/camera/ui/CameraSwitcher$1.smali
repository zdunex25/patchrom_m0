.class Lcom/android/camera/ui/CameraSwitcher$1;
.super Ljava/lang/Object;
.source "CameraSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/CameraSwitcher;->initPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/CameraSwitcher;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/camera/ui/CameraSwitcher;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/camera/ui/CameraSwitcher$1;->this$0:Lcom/android/camera/ui/CameraSwitcher;

    iput p2, p0, Lcom/android/camera/ui/CameraSwitcher$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/CameraSwitcher$1;->this$0:Lcom/android/camera/ui/CameraSwitcher;

    iget v1, p0, Lcom/android/camera/ui/CameraSwitcher$1;->val$index:I

    #calls: Lcom/android/camera/ui/CameraSwitcher;->onCameraSelected(I)V
    invoke-static {v0, v1}, Lcom/android/camera/ui/CameraSwitcher;->access$000(Lcom/android/camera/ui/CameraSwitcher;I)V

    .line 131
    return-void
.end method
