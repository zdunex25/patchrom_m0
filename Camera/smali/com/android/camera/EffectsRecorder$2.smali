.class Lcom/android/camera/EffectsRecorder$2;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/EffectsRecorder;->raiseError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/EffectsRecorder;

.field final synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/android/camera/EffectsRecorder;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder$2;->this$0:Lcom/android/camera/EffectsRecorder;

    iput-object p2, p0, Lcom/android/camera/EffectsRecorder$2;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder$2;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;
    invoke-static {v0}, Lcom/android/camera/EffectsRecorder;->access$1500(Lcom/android/camera/EffectsRecorder;)Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder$2;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;
    invoke-static {v0}, Lcom/android/camera/EffectsRecorder;->access$1400(Lcom/android/camera/EffectsRecorder;)Lcom/android/camera/EffectsRecorder$EffectsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$2;->val$exception:Ljava/lang/Exception;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/camera/EffectsRecorder$EffectsListener;->onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1158
    :goto_0
    return-void

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder$2;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;
    invoke-static {v0}, Lcom/android/camera/EffectsRecorder;->access$1400(Lcom/android/camera/EffectsRecorder;)Lcom/android/camera/EffectsRecorder$EffectsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/EffectsRecorder$2;->val$exception:Ljava/lang/Exception;

    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$2;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$1600(Lcom/android/camera/EffectsRecorder;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/EffectsRecorder$EffectsListener;->onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
