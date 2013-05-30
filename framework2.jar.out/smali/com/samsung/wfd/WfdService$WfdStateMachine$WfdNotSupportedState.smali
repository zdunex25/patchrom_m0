.class Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;
.super Lcom/android/internal/util/State;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdService$WfdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WfdNotSupportedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1532
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$WfdNotSupportedState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string v1, "Wi-Fi Display is not supported"

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3400(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 1536
    const/4 v0, 0x0

    return v0
.end method
