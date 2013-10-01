.class Lcom/android/camera/PhotoController$3;
.super Ljava/lang/Object;
.source "PhotoController.java"

# interfaces
.implements Lcom/android/camera/ui/PieItem$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoController;->initialize(Lcom/android/camera/PreferenceGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoController;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoController;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/camera/PhotoController$3;->this$0:Lcom/android/camera/PhotoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/android/camera/ui/PieItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/PhotoController$3;->this$0:Lcom/android/camera/PhotoController;

    #getter for: Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;
    invoke-static {v0}, Lcom/android/camera/PhotoController;->access$000(Lcom/android/camera/PhotoController;)Lcom/android/camera/ui/MoreSettingPopup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/camera/PhotoController$3;->this$0:Lcom/android/camera/PhotoController;

    invoke-virtual {v0}, Lcom/android/camera/PhotoController;->initializePopup()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoController$3;->this$0:Lcom/android/camera/PhotoController;

    #getter for: Lcom/android/camera/PhotoController;->mModule:Lcom/android/camera/PhotoModule;
    invoke-static {v0}, Lcom/android/camera/PhotoController;->access$100(Lcom/android/camera/PhotoController;)Lcom/android/camera/PhotoModule;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoController$3;->this$0:Lcom/android/camera/PhotoController;

    #getter for: Lcom/android/camera/PhotoController;->mPopup:Lcom/android/camera/ui/MoreSettingPopup;
    invoke-static {v1}, Lcom/android/camera/PhotoController;->access$000(Lcom/android/camera/PhotoController;)Lcom/android/camera/ui/MoreSettingPopup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoModule;->showPopup(Lcom/android/camera/ui/AbstractSettingPopup;)V

    .line 119
    return-void
.end method
