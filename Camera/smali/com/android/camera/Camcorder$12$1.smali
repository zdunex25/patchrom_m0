.class Lcom/android/camera/Camcorder$12$1;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camcorder$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/Camcorder$12;


# direct methods
.method constructor <init>(Lcom/android/camera/Camcorder$12;)V
    .locals 0
    .parameter

    .prologue
    .line 4121
    iput-object p1, p0, Lcom/android/camera/Camcorder$12$1;->this$1:Lcom/android/camera/Camcorder$12;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4124
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camcorder$12$1;->this$1:Lcom/android/camera/Camcorder$12;

    iget-object v0, v0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderSideMenu:Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v0}, Lcom/android/camera/Camcorder;->access$1400(Lcom/android/camera/Camcorder;)Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;->showMenu()V

    .line 4125
    iget-object v0, p0, Lcom/android/camera/Camcorder$12$1;->this$1:Lcom/android/camera/Camcorder$12;

    iget-object v0, v0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    iget-object v0, v0, Lcom/android/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0xbd2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camcorder$12$1;->this$1:Lcom/android/camera/Camcorder$12;

    iget-object v2, v2, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderSideMenu:Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v2}, Lcom/android/camera/Camcorder;->access$1400(Lcom/android/camera/Camcorder;)Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4126
    iget-object v0, p0, Lcom/android/camera/Camcorder$12$1;->this$1:Lcom/android/camera/Camcorder$12;

    iget-object v0, v0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    iget-object v0, v0, Lcom/android/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/android/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/android/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0xbd4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camcorder$12$1;->this$1:Lcom/android/camera/Camcorder$12;

    iget-object v2, v2, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/android/camera/glwidget/TwGLCamcorderBaseIndicators;
    invoke-static {v2}, Lcom/android/camera/Camcorder;->access$2400(Lcom/android/camera/Camcorder;)Lcom/android/camera/glwidget/TwGLCamcorderBaseIndicators;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4127
    iget-object v0, p0, Lcom/android/camera/Camcorder$12$1;->this$1:Lcom/android/camera/Camcorder$12;

    iget-object v0, v0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    iget-object v0, v0, Lcom/android/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camcorder$12$1;->this$1:Lcom/android/camera/Camcorder$12;

    iget-object v0, v0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderSideMenu:Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v0}, Lcom/android/camera/Camcorder;->access$1400(Lcom/android/camera/Camcorder;)Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4128
    iget-object v0, p0, Lcom/android/camera/Camcorder$12$1;->this$1:Lcom/android/camera/Camcorder$12;

    iget-object v0, v0, Lcom/android/camera/Camcorder$12;->this$0:Lcom/android/camera/Camcorder;

    #getter for: Lcom/android/camera/Camcorder;->mCamcorderSideMenu:Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v0}, Lcom/android/camera/Camcorder;->access$1400(Lcom/android/camera/Camcorder;)Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/glwidget/TwGLCamcorderSideMenu;->setModeButtonDimmed(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4133
    :cond_0
    :goto_0
    return-void

    .line 4130
    :catch_0
    move-exception v0

    goto :goto_0
.end method
