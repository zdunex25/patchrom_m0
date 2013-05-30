.class Lcom/sec/android/app/camera/Camcorder$7$1;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camcorder$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/Camcorder$7;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camcorder$7;)V
    .locals 0
    .parameter

    .prologue
    .line 3614
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$7$1;->this$1:Lcom/sec/android/app/camera/Camcorder$7;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3617
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$7$1;->this$1:Lcom/sec/android/app/camera/Camcorder$7;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showMenu()V

    .line 3618
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$7$1;->this$1:Lcom/sec/android/app/camera/Camcorder$7;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0xbd2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder$7$1;->this$1:Lcom/sec/android/app/camera/Camcorder$7;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3619
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$7$1;->this$1:Lcom/sec/android/app/camera/Camcorder$7;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0xbd4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder$7$1;->this$1:Lcom/sec/android/app/camera/Camcorder$7;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camcorder;->access$2300(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3620
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$7$1;->this$1:Lcom/sec/android/app/camera/Camcorder$7;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$7$1;->this$1:Lcom/sec/android/app/camera/Camcorder$7;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3621
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$7$1;->this$1:Lcom/sec/android/app/camera/Camcorder$7;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setModeButtonDimmed(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3626
    :cond_0
    :goto_0
    return-void

    .line 3623
    :catch_0
    move-exception v0

    goto :goto_0
.end method
