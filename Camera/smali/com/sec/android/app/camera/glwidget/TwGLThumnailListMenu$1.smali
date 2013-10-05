.class Lcom/android/camera/glwidget/TwGLThumnailListMenu$1;
.super Landroid/view/OrientationEventListener;
.source "TwGLThumnailListMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/glwidget/TwGLThumnailListMenu;-><init>(Lcom/android/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/android/camera/resourcedata/MenuResourceBase;Lcom/android/camera/MenuResourceDepot;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/glwidget/TwGLThumnailListMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/glwidget/TwGLThumnailListMenu;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/camera/glwidget/TwGLThumnailListMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLThumnailListMenu;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 80
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {p1}, Lcom/sec/android/glview/TwGLUtil;->getGLOrientationBySystemOrientation(I)I

    move-result v0

    .line 84
    .local v0, newOrientation:I
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLThumnailListMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLThumnailListMenu;

    #getter for: Lcom/android/camera/glwidget/TwGLThumnailListMenu;->mLastOrientation:I
    invoke-static {v1}, Lcom/android/camera/glwidget/TwGLThumnailListMenu;->access$100(Lcom/android/camera/glwidget/TwGLThumnailListMenu;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLThumnailListMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLThumnailListMenu;

    invoke-virtual {v1, v0}, Lcom/android/camera/glwidget/TwGLThumnailListMenu;->onMenuRotated(I)V

    .line 86
    iget-object v1, p0, Lcom/android/camera/glwidget/TwGLThumnailListMenu$1;->this$0:Lcom/android/camera/glwidget/TwGLThumnailListMenu;

    #setter for: Lcom/android/camera/glwidget/TwGLThumnailListMenu;->mLastOrientation:I
    invoke-static {v1, v0}, Lcom/android/camera/glwidget/TwGLThumnailListMenu;->access$102(Lcom/android/camera/glwidget/TwGLThumnailListMenu;I)I

    goto :goto_0
.end method
