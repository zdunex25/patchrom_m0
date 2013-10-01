.class Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/OrientationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/OrientationManager;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/OrientationManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/android/gallery3d/app/OrientationManager;

    .line 112
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 113
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 120
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    #calls: Lcom/android/gallery3d/app/OrientationManager;->roundOrientation(II)I
    invoke-static {p1, v0}, Lcom/android/gallery3d/app/OrientationManager;->access$000(II)I

    move-result p1

    .line 122
    goto :goto_0
.end method
