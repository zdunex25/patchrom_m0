.class Lcom/android/OriginalSettings/nearby/NearbySettings$9;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/nearby/NearbySettings;->requestWelcomePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

.field final synthetic val$welcomeCheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/nearby/NearbySettings;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 806
    iput-object p1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$9;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    iput-object p2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$9;->val$welcomeCheck:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 808
    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$9;->val$welcomeCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 809
    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$9;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    #getter for: Lcom/android/OriginalSettings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/OriginalSettings/nearby/NearbySettings;->access$400(Lcom/android/OriginalSettings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_allshare"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 812
    .local v1, preference:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 813
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "allshare_welcome_popup"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 814
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 815
    const-string v2, "AllshareSetting"

    const-string v3, "AllshareSetting: Startup Dialog: Do not show again"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #preference:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 817
    :cond_0
    const-string v2, "AllshareSetting"

    const-string v3, "AllshareSetting: Startup Dialog: show again next time"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
