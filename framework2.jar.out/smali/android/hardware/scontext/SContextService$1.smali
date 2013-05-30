.class Landroid/hardware/scontext/SContextService$1;
.super Ljava/lang/Object;
.source "SContextService.java"

# interfaces
.implements Landroid/hardware/contextaware/CAListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/SContextService;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/SContextService;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextChanged(Landroid/hardware/contextaware/CAEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 391
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 392
    .local v0, timestamp:J
    invoke-virtual {p1}, Landroid/hardware/contextaware/CAEvent;->getEvent()I

    move-result v2

    sget v3, Landroid/hardware/contextaware/CAEvent;->GESTURE_APPROACH:I

    if-ne v2, v3, :cond_0

    .line 393
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextApproachContext:Landroid/hardware/scontext/SContextContexts$SContextApproachContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    move-result-object v2

    iput v4, v2, Landroid/hardware/scontext/SContextContexts$SContextApproachContext;->approach:I

    .line 394
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextApproachContext:Landroid/hardware/scontext/SContextContexts$SContextApproachContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    move-result-object v2

    iput-wide v0, v2, Landroid/hardware/scontext/SContextContexts$SContextApproachContext;->timestamp:J

    .line 395
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    iget-object v3, p0, Landroid/hardware/scontext/SContextService$1;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextApproachContext:Landroid/hardware/scontext/SContextContexts$SContextApproachContext;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService;->access$200(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextApproachContext;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V

    .line 397
    :cond_0
    return-void
.end method
