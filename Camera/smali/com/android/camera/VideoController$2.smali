.class Lcom/android/camera/VideoController$2;
.super Ljava/lang/Object;
.source "VideoController.java"

# interfaces
.implements Lcom/android/camera/ui/PieItem$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoController;->initialize(Lcom/android/camera/PreferenceGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoController;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoController;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/camera/VideoController$2;->this$0:Lcom/android/camera/VideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/android/camera/ui/PieItem;)V
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 100
    iget-object v0, p0, Lcom/android/camera/VideoController$2;->this$0:Lcom/android/camera/VideoController;

    #getter for: Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;
    invoke-static {v0}, Lcom/android/camera/VideoController;->access$000(Lcom/android/camera/VideoController;)Lcom/android/camera/ui/AbstractSettingPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoController$2;->this$0:Lcom/android/camera/VideoController;

    #getter for: Lcom/android/camera/VideoController;->mPopupStatus:I
    invoke-static {v0}, Lcom/android/camera/VideoController;->access$100(Lcom/android/camera/VideoController;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoController$2;->this$0:Lcom/android/camera/VideoController;

    invoke-virtual {v0}, Lcom/android/camera/VideoController;->initializePopup()V

    .line 102
    iget-object v0, p0, Lcom/android/camera/VideoController$2;->this$0:Lcom/android/camera/VideoController;

    #setter for: Lcom/android/camera/VideoController;->mPopupStatus:I
    invoke-static {v0, v1}, Lcom/android/camera/VideoController;->access$102(Lcom/android/camera/VideoController;I)I

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoController$2;->this$0:Lcom/android/camera/VideoController;

    #getter for: Lcom/android/camera/VideoController;->mModule:Lcom/android/camera/VideoModule;
    invoke-static {v0}, Lcom/android/camera/VideoController;->access$200(Lcom/android/camera/VideoController;)Lcom/android/camera/VideoModule;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoController$2;->this$0:Lcom/android/camera/VideoController;

    #getter for: Lcom/android/camera/VideoController;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;
    invoke-static {v1}, Lcom/android/camera/VideoController;->access$000(Lcom/android/camera/VideoController;)Lcom/android/camera/ui/AbstractSettingPopup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoModule;->showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V

    .line 105
    return-void
.end method
