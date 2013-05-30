.class Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$3;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;)V
    .locals 0
    .parameter

    .prologue
    .line 2450
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$3;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 2452
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 2453
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2475
    :cond_0
    :goto_0
    return v7

    .line 2455
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2456
    invoke-static {}, Landroid/widget/RemoteViews;->access$700()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/widget/RemoteViews;->access$700()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$3;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2460
    :pswitch_1
    invoke-static {}, Landroid/widget/RemoteViews;->access$700()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/widget/RemoteViews;->access$700()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$3;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2461
    invoke-static {}, Landroid/widget/RemoteViews;->access$700()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$3;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2464
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$3;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->upPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    const/high16 v4, 0x1000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2468
    :catch_0
    move-exception v6

    .line 2469
    .local v6, e:Landroid/content/IntentSender$SendIntentException;
    const-string v0, "RemoteViews"

    const-string v1, "Cannot send pending intent: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2453
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
