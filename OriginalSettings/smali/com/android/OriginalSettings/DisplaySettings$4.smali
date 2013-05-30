.class Lcom/android/OriginalSettings/DisplaySettings$4;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/OriginalSettings/DisplaySettings$4;->this$0:Lcom/android/OriginalSettings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/OriginalSettings/DisplaySettings$4;->this$0:Lcom/android/OriginalSettings/DisplaySettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 242
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/OriginalSettings/DisplaySettings$4;->this$0:Lcom/android/OriginalSettings/DisplaySettings;

    #getter for: Lcom/android/OriginalSettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/OriginalSettings/DisplaySettings;->access$300(Lcom/android/OriginalSettings/DisplaySettings;)Landroid/preference/ListPreference;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const-wide/16 v3, 0x7530

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 243
    return-void
.end method
