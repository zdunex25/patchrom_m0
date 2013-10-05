.class Lcom/android/camera/glwidget/TwGLSmileMenu$2;
.super Ljava/lang/Object;
.source "TwGLSmileMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/glwidget/TwGLSmileMenu;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/MenuResourceDepot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/glwidget/TwGLSmileMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/glwidget/TwGLSmileMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLSmileMenu$2;->this$0:Lcom/android/camera/glwidget/TwGLSmileMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 2
    .parameter "animation"

    .prologue
    .line 128
    const-string v0, "Debug"

    const-string v1, "anim end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu$2;->this$0:Lcom/android/camera/glwidget/TwGLSmileMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/android/camera/glwidget/TwGLSmileMenu;->access$000(Lcom/android/camera/glwidget/TwGLSmileMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLSmileMenu$2;->this$0:Lcom/android/camera/glwidget/TwGLSmileMenu;

    iget-object v1, v1, Lcom/android/camera/glwidget/TwGLSmileMenu;->blinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 130
    iget-object v0, p0, Lcom/android/camera/glwidget/TwGLSmileMenu$2;->this$0:Lcom/android/camera/glwidget/TwGLSmileMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLSmileMenu;->mBlinkImage:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/android/camera/glwidget/TwGLSmileMenu;->access$000(Lcom/android/camera/glwidget/TwGLSmileMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter "animation"

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method
