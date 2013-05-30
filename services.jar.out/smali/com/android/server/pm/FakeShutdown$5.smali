.class Lcom/android/server/pm/FakeShutdown$5;
.super Landroid/os/UEventObserver;
.source "FakeShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/FakeShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/FakeShutdown;


# direct methods
.method constructor <init>(Lcom/android/server/pm/FakeShutdown;)V
    .locals 0
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/server/pm/FakeShutdown$5;->this$0:Lcom/android/server/pm/FakeShutdown;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 589
    const-string v0, "FakeShutdown"

    const-string v1, "autoPowerOffObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-virtual {p0}, Lcom/android/server/pm/FakeShutdown$5;->stopObserving()V

    .line 591
    return-void
.end method
