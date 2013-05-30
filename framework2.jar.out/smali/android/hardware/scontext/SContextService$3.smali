.class Landroid/hardware/scontext/SContextService$3;
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
    .line 417
    iput-object p1, p0, Landroid/hardware/scontext/SContextService$3;->this$0:Landroid/hardware/scontext/SContextService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextChanged(Landroid/hardware/contextaware/CAEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 420
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 421
    .local v0, timestamp:J
    invoke-virtual {p1}, Landroid/hardware/contextaware/CAEvent;->getEvent()I

    move-result v2

    sget v3, Landroid/hardware/contextaware/CAEvent;->STEP_COUNT_ALERT:I

    if-ne v2, v3, :cond_0

    .line 422
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$3;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;->alert:I

    .line 423
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$3;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;
    invoke-static {v2}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    move-result-object v2

    iput-wide v0, v2, Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;->timestamp:J

    .line 424
    iget-object v2, p0, Landroid/hardware/scontext/SContextService$3;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v3, 0x3

    iget-object v4, p0, Landroid/hardware/scontext/SContextService$3;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextStepCountAlertContext:Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;
    invoke-static {v4}, Landroid/hardware/scontext/SContextService;->access$400(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextStepCountAlertContext;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V

    .line 426
    :cond_0
    return-void
.end method
