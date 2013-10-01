.class Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onKeyguardVisibilityChanged(Z)V
    .locals 1
    .parameter "showing"

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refresh()V

    .line 64
    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refresh()V

    .line 56
    return-void
.end method
