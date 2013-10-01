.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager$1;
.super Ljava/lang/Object;
.source "KeyguardViewStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->hideOutlinesAndSidePages()V

    .line 297
    :cond_0
    return-void
.end method
