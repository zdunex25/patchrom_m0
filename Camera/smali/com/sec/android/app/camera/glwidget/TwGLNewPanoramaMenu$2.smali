.class Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$2;
.super Ljava/lang/Object;
.source "TwGLNewPanoramaMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLNewPanoramaMenu;->hideLivePreview()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :goto_0
    return-void

    .line 617
    :catch_0
    move-exception v0

    goto :goto_0
.end method
