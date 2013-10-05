.class Lcom/android/camera/Camcorder$2;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camcorder;
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
    .line 335
    iput-object p1, p0, Lcom/android/camera/Camcorder$2;->this$0:Lcom/android/camera/Camcorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 337
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 352
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 339
    :pswitch_1
    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 340
    iget-object v0, p0, Lcom/android/camera/Camcorder$2;->this$0:Lcom/android/camera/Camcorder;

    invoke-virtual {v0, p2}, Lcom/android/camera/Camcorder;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
