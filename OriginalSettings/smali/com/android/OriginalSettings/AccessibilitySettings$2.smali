.class Lcom/android/OriginalSettings/AccessibilitySettings$2;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$2;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$2;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    #calls: Lcom/android/OriginalSettings/AccessibilitySettings;->updateLockScreenRotationCheckbox()V
    invoke-static {v0}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$300(Lcom/android/OriginalSettings/AccessibilitySettings;)V

    .line 197
    return-void
.end method
