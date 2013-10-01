.class public Lcom/android/internal/os/HandlerCaller;
.super Ljava/lang/Object;
.source "HandlerCaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/HandlerCaller$Callback;,
        Lcom/android/internal/os/HandlerCaller$MyHandler;
    }
.end annotation


# instance fields
.field final mCallback:Lcom/android/internal/os/HandlerCaller$Callback;

.field public final mContext:Landroid/content/Context;

.field final mH:Landroid/os/Handler;

.field final mMainLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;)V
    .locals 2
    .parameter "context"
    .parameter "looper"
    .parameter "callback"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/internal/os/HandlerCaller;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/internal/os/HandlerCaller;->mMainLooper:Landroid/os/Looper;

    .line 58
    new-instance v0, Lcom/android/internal/os/HandlerCaller$MyHandler;

    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/HandlerCaller$MyHandler;-><init>(Lcom/android/internal/os/HandlerCaller;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    .line 59
    iput-object p3, p0, Lcom/android/internal/os/HandlerCaller;->mCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/HandlerCaller$Callback;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/internal/os/HandlerCaller;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mMainLooper:Landroid/os/Looper;

    .line 51
    new-instance v0, Lcom/android/internal/os/HandlerCaller$MyHandler;

    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/HandlerCaller$MyHandler;-><init>(Lcom/android/internal/os/HandlerCaller;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    .line 52
    iput-object p2, p0, Lcom/android/internal/os/HandlerCaller;->mCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    .line 53
    return-void
.end method


# virtual methods
.method public executeOrSendMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 66
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mMainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/os/HandlerCaller$Callback;->executeMessage(Landroid/os/Message;)V

    .line 68
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public hasMessages(I)Z
    .locals 1
    .parameter "what"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public obtainMessage(I)Landroid/os/Message;
    .locals 1
    .parameter "what"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessageBO(IZLjava/lang/Object;)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v2, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, p1, v0, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public obtainMessageBOO(IZLjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 4
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 101
    .local v0, args:Lcom/android/internal/os/SomeArgs;
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 102
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 103
    iget-object v3, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, p1, v1, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public obtainMessageI(II)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessageII(III)Landroid/os/Message;
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessageIIII(IIIII)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 169
    .local v0, args:Lcom/android/internal/os/SomeArgs;
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 170
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 171
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 172
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 173
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public obtainMessageIIIIII(IIIIIII)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "arg5"
    .parameter "arg6"

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 179
    .local v0, args:Lcom/android/internal/os/SomeArgs;
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 180
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 181
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 182
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 183
    iput p6, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 184
    iput p7, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 185
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public obtainMessageIIIIO(IIIIILjava/lang/Object;)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "arg5"

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 191
    .local v0, args:Lcom/android/internal/os/SomeArgs;
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 192
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 193
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 194
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 195
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 196
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessageIIOO(IIILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    .line 128
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 129
    .local v0, args:Lcom/android/internal/os/SomeArgs;
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 130
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 135
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 136
    .local v0, args:Lcom/android/internal/os/SomeArgs;
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 137
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 143
    .local v0, args:Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 144
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 150
    .local v0, args:Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 151
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 152
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public obtainMessageOOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 159
    .local v0, args:Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 160
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 161
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 162
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 163
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public removeMessages(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    return-void
.end method

.method public removeMessages(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 85
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    return-void
.end method
