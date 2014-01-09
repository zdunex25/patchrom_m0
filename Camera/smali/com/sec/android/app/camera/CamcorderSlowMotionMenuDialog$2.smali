.class Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog$2;
.super Ljava/lang/Object;
.source "CamcorderSlowMotionMenuDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog$2;->this$0:Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog$2;->this$0:Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSlowMotionMenuDialog;->dismiss()V

    .line 114
    return-void
.end method
