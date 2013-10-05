.class Lcom/android/camera/AbstractCameraActivity$32;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AbstractCameraActivity;->handleLowBattery(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AbstractCameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2114
    iput-object p1, p0, Lcom/android/camera/AbstractCameraActivity$32;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/android/camera/AbstractCameraActivity$32;->this$0:Lcom/android/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/AbstractCameraActivity;->finish()V

    .line 2118
    return-void
.end method
