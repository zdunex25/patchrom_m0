.class Landroid/hardware/scontext/SContextService$5;
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
    .line 442
    iput-object p1, p0, Landroid/hardware/scontext/SContextService$5;->this$0:Landroid/hardware/scontext/SContextService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextChanged(Landroid/hardware/contextaware/CAEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 445
    invoke-virtual {p1}, Landroid/hardware/contextaware/CAEvent;->getEvent()I

    move-result v1

    sget v2, Landroid/hardware/contextaware/CAEvent;->MOVEMENT:I

    if-ne v1, v2, :cond_0

    .line 446
    invoke-virtual {p1}, Landroid/hardware/contextaware/CAEvent;->getMovementContext()Landroid/hardware/contextaware/CAMovementContext;

    move-result-object v0

    .line 448
    .local v0, movementContext:Landroid/hardware/contextaware/CAMovementContext;
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$5;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextMovementContext:Landroid/hardware/scontext/SContextContexts$SContextMovementContext;
    invoke-static {v1}, Landroid/hardware/scontext/SContextService;->access$600(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/contextaware/CAMovementContext;->getAction()I

    move-result v2

    iput v2, v1, Landroid/hardware/scontext/SContextContexts$SContextMovementContext;->action:I

    .line 450
    iget-object v1, p0, Landroid/hardware/scontext/SContextService$5;->this$0:Landroid/hardware/scontext/SContextService;

    const/4 v2, 0x5

    iget-object v3, p0, Landroid/hardware/scontext/SContextService$5;->this$0:Landroid/hardware/scontext/SContextService;

    #getter for: Landroid/hardware/scontext/SContextService;->mSContextMovementContext:Landroid/hardware/scontext/SContextContexts$SContextMovementContext;
    invoke-static {v3}, Landroid/hardware/scontext/SContextService;->access$600(Landroid/hardware/scontext/SContextService;)Landroid/hardware/scontext/SContextContexts$SContextMovementContext;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/scontext/SContextService;->updateSContext(ILandroid/hardware/scontext/ISContextContexts;)V

    .line 452
    .end local v0           #movementContext:Landroid/hardware/contextaware/CAMovementContext;
    :cond_0
    return-void
.end method
