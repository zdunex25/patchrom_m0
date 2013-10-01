.class Landroid/webkit/HTML5WebSocket$1;
.super Landroid/os/Handler;
.source "HTML5WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5WebSocket;->createWebCoreHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5WebSocket;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5WebSocket;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Landroid/webkit/HTML5WebSocket$1;->this$0:Landroid/webkit/HTML5WebSocket;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 454
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 456
    :pswitch_0
    iget-object v1, p0, Landroid/webkit/HTML5WebSocket$1;->this$0:Landroid/webkit/HTML5WebSocket;

    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$1;->this$0:Landroid/webkit/HTML5WebSocket;

    #getter for: Landroid/webkit/HTML5WebSocket;->mNativePointer:I
    invoke-static {v2}, Landroid/webkit/HTML5WebSocket;->access$000(Landroid/webkit/HTML5WebSocket;)I

    move-result v2

    #calls: Landroid/webkit/HTML5WebSocket;->nativeOnWebSocketConnected(I)V
    invoke-static {v1, v2}, Landroid/webkit/HTML5WebSocket;->access$100(Landroid/webkit/HTML5WebSocket;I)V

    goto :goto_0

    .line 460
    :pswitch_1
    iget-object v1, p0, Landroid/webkit/HTML5WebSocket$1;->this$0:Landroid/webkit/HTML5WebSocket;

    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$1;->this$0:Landroid/webkit/HTML5WebSocket;

    #getter for: Landroid/webkit/HTML5WebSocket;->mNativePointer:I
    invoke-static {v2}, Landroid/webkit/HTML5WebSocket;->access$000(Landroid/webkit/HTML5WebSocket;)I

    move-result v2

    #calls: Landroid/webkit/HTML5WebSocket;->nativeOnWebSocketClosed(I)V
    invoke-static {v1, v2}, Landroid/webkit/HTML5WebSocket;->access$200(Landroid/webkit/HTML5WebSocket;I)V

    goto :goto_0

    .line 464
    :pswitch_2
    const/4 v0, 0x0

    .line 466
    .local v0, msgData:Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v1, p0, Landroid/webkit/HTML5WebSocket$1;->this$0:Landroid/webkit/HTML5WebSocket;

    #getter for: Landroid/webkit/HTML5WebSocket;->mWebSocket:Landroid/webkit/HTML5WebSocket$WebSocket;
    invoke-static {v1}, Landroid/webkit/HTML5WebSocket;->access$300(Landroid/webkit/HTML5WebSocket;)Landroid/webkit/HTML5WebSocket$WebSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/HTML5WebSocket$WebSocket;->getReadData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_0

    .line 470
    iget-object v1, p0, Landroid/webkit/HTML5WebSocket$1;->this$0:Landroid/webkit/HTML5WebSocket;

    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$1;->this$0:Landroid/webkit/HTML5WebSocket;

    #getter for: Landroid/webkit/HTML5WebSocket;->mNativePointer:I
    invoke-static {v2}, Landroid/webkit/HTML5WebSocket;->access$000(Landroid/webkit/HTML5WebSocket;)I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    #calls: Landroid/webkit/HTML5WebSocket;->nativeOnWebSocketMessage(I[BI)V
    invoke-static {v1, v2, v3, v4}, Landroid/webkit/HTML5WebSocket;->access$400(Landroid/webkit/HTML5WebSocket;I[BI)V

    .line 471
    if-nez p1, :cond_1

    goto :goto_0

    .line 475
    .end local v0           #msgData:Ljava/nio/ByteBuffer;
    :pswitch_3
    iget-object v1, p0, Landroid/webkit/HTML5WebSocket$1;->this$0:Landroid/webkit/HTML5WebSocket;

    iget-object v2, p0, Landroid/webkit/HTML5WebSocket$1;->this$0:Landroid/webkit/HTML5WebSocket;

    #getter for: Landroid/webkit/HTML5WebSocket;->mNativePointer:I
    invoke-static {v2}, Landroid/webkit/HTML5WebSocket;->access$000(Landroid/webkit/HTML5WebSocket;)I

    move-result v2

    #calls: Landroid/webkit/HTML5WebSocket;->nativeOnWebSocketError(I)V
    invoke-static {v1, v2}, Landroid/webkit/HTML5WebSocket;->access$500(Landroid/webkit/HTML5WebSocket;I)V

    goto :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
