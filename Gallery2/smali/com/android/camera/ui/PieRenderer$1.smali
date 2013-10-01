.class Lcom/android/camera/ui/PieRenderer$1;
.super Landroid/os/Handler;
.source "PieRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PieRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/PieRenderer;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/PieRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/camera/ui/PieRenderer$1;->this$0:Lcom/android/camera/ui/PieRenderer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 126
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$1;->this$0:Lcom/android/camera/ui/PieRenderer;

    #getter for: Lcom/android/camera/ui/PieRenderer;->mListener:Lcom/android/camera/ui/PieRenderer$PieListener;
    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$200(Lcom/android/camera/ui/PieRenderer;)Lcom/android/camera/ui/PieRenderer$PieListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$1;->this$0:Lcom/android/camera/ui/PieRenderer;

    #getter for: Lcom/android/camera/ui/PieRenderer;->mListener:Lcom/android/camera/ui/PieRenderer$PieListener;
    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$200(Lcom/android/camera/ui/PieRenderer;)Lcom/android/camera/ui/PieRenderer$PieListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/PieRenderer$1;->this$0:Lcom/android/camera/ui/PieRenderer;

    #getter for: Lcom/android/camera/ui/PieRenderer;->mCenter:Landroid/graphics/Point;
    invoke-static {v1}, Lcom/android/camera/ui/PieRenderer;->access$300(Lcom/android/camera/ui/PieRenderer;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/camera/ui/PieRenderer$1;->this$0:Lcom/android/camera/ui/PieRenderer;

    #getter for: Lcom/android/camera/ui/PieRenderer;->mCenter:Landroid/graphics/Point;
    invoke-static {v2}, Lcom/android/camera/ui/PieRenderer;->access$300(Lcom/android/camera/ui/PieRenderer;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/PieRenderer$PieListener;->onPieOpened(II)V

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$1;->this$0:Lcom/android/camera/ui/PieRenderer;

    #getter for: Lcom/android/camera/ui/PieRenderer;->mListener:Lcom/android/camera/ui/PieRenderer$PieListener;
    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$200(Lcom/android/camera/ui/PieRenderer;)Lcom/android/camera/ui/PieRenderer$PieListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/PieRenderer$1;->this$0:Lcom/android/camera/ui/PieRenderer;

    #getter for: Lcom/android/camera/ui/PieRenderer;->mListener:Lcom/android/camera/ui/PieRenderer$PieListener;
    invoke-static {v0}, Lcom/android/camera/ui/PieRenderer;->access$200(Lcom/android/camera/ui/PieRenderer;)Lcom/android/camera/ui/PieRenderer$PieListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/PieRenderer$PieListener;->onPieClosed()V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
