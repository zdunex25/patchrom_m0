.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0
    .parameter "securityVerified"

    .prologue
    .line 761
    return-void
.end method

.method public getFailedAttempts()I
    .locals 1

    .prologue
    .line 756
    const/4 v0, 0x0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 751
    const/4 v0, 0x0

    return v0
.end method

.method public reportFailedUnlockAttempt()V
    .locals 0

    .prologue
    .line 747
    return-void
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 0

    .prologue
    .line 743
    return-void
.end method

.method public setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 739
    return-void
.end method

.method public showBackupSecurity()V
    .locals 0

    .prologue
    .line 735
    return-void
.end method

.method public userActivity(J)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 731
    return-void
.end method
