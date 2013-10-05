.class Lcom/android/camera/Camcorder$15;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camcorder;->handlePluggedLowBattery(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/android/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 4497
    iput-object p1, p0, Lcom/android/camera/Camcorder$15;->this$0:Lcom/android/camera/Camcorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4499
    iget-object v0, p0, Lcom/android/camera/Camcorder$15;->this$0:Lcom/android/camera/Camcorder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 4500
    return-void
.end method
