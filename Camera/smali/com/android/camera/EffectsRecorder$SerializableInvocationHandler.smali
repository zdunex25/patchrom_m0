.class Lcom/android/camera/EffectsRecorder$SerializableInvocationHandler;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/EffectsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerializableInvocationHandler"
.end annotation


# instance fields
.field private final mEffectsRecorderIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1087
    iput p1, p0, Lcom/android/camera/EffectsRecorder$SerializableInvocationHandler;->mEffectsRecorderIndex:I

    .line 1088
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "proxy"
    .parameter "method"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1093
    invoke-static {}, Lcom/android/camera/EffectsRecorder;->access$000()Lcom/android/camera/EffectsRecorder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1112
    :cond_0
    :goto_0
    return-object v0

    .line 1094
    :cond_1
    iget v1, p0, Lcom/android/camera/EffectsRecorder$SerializableInvocationHandler;->mEffectsRecorderIndex:I

    invoke-static {}, Lcom/android/camera/EffectsRecorder;->access$100()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1095
    const-string v1, "EffectsRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore old callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/EffectsRecorder$SerializableInvocationHandler;->mEffectsRecorderIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1098
    :cond_2
    invoke-static {}, Lcom/android/camera/EffectsRecorder;->access$200()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1099
    invoke-static {}, Lcom/android/camera/EffectsRecorder;->access$000()Lcom/android/camera/EffectsRecorder;

    move-result-object v0

    #calls: Lcom/android/camera/EffectsRecorder;->invokeObjectEquals(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, p1, p3}, Lcom/android/camera/EffectsRecorder;->access$300(Lcom/android/camera/EffectsRecorder;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1100
    :cond_3
    invoke-static {}, Lcom/android/camera/EffectsRecorder;->access$400()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1101
    invoke-static {}, Lcom/android/camera/EffectsRecorder;->access$000()Lcom/android/camera/EffectsRecorder;

    move-result-object v0

    #calls: Lcom/android/camera/EffectsRecorder;->invokeObjectToString()Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/camera/EffectsRecorder;->access$500(Lcom/android/camera/EffectsRecorder;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1102
    :cond_4
    invoke-static {}, Lcom/android/camera/EffectsRecorder;->access$600()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1103
    invoke-static {}, Lcom/android/camera/EffectsRecorder;->access$000()Lcom/android/camera/EffectsRecorder;

    move-result-object v1

    #calls: Lcom/android/camera/EffectsRecorder;->invokeOnLearningDone()V
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$700(Lcom/android/camera/EffectsRecorder;)V

    goto :goto_0

    .line 1104
    :cond_5
    invoke-static {}, Lcom/android/camera/EffectsRecorder;->access$800()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1105
    invoke-static {}, Lcom/android/camera/EffectsRecorder;->access$000()Lcom/android/camera/EffectsRecorder;

    move-result-object v1

    #calls: Lcom/android/camera/EffectsRecorder;->invokeOnRunnerDone([Ljava/lang/Object;)V
    invoke-static {v1, p3}, Lcom/android/camera/EffectsRecorder;->access$900(Lcom/android/camera/EffectsRecorder;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1106
    :cond_6
    invoke-static {}, Lcom/android/camera/EffectsRecorder;->access$1000()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1108
    invoke-static {}, Lcom/android/camera/EffectsRecorder;->access$000()Lcom/android/camera/EffectsRecorder;

    move-result-object v1

    #calls: Lcom/android/camera/EffectsRecorder;->invokeOnSurfaceTextureSourceReady([Ljava/lang/Object;)V
    invoke-static {v1, p3}, Lcom/android/camera/EffectsRecorder;->access$1100(Lcom/android/camera/EffectsRecorder;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1109
    :cond_7
    invoke-static {}, Lcom/android/camera/EffectsRecorder;->access$1200()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1110
    invoke-static {}, Lcom/android/camera/EffectsRecorder;->access$000()Lcom/android/camera/EffectsRecorder;

    move-result-object v1

    #calls: Lcom/android/camera/EffectsRecorder;->invokeOnRecordingDone()V
    invoke-static {v1}, Lcom/android/camera/EffectsRecorder;->access$1300(Lcom/android/camera/EffectsRecorder;)V

    goto/16 :goto_0
.end method
