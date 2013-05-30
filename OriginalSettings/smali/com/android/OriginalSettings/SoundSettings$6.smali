.class Lcom/android/OriginalSettings/SoundSettings$6;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/SoundSettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/SoundSettings;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/SoundSettings;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/android/OriginalSettings/SoundSettings$6;->this$0:Lcom/android/OriginalSettings/SoundSettings;

    iput-object p2, p0, Lcom/android/OriginalSettings/SoundSettings$6;->val$layout:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .parameter "dialog"

    .prologue
    const/4 v5, 0x1

    .line 657
    iget-object v3, p0, Lcom/android/OriginalSettings/SoundSettings$6;->val$layout:Landroid/view/View;

    const v4, 0x7f0b00b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 658
    .local v1, check:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 659
    iget-object v3, p0, Lcom/android/OriginalSettings/SoundSettings$6;->this$0:Lcom/android/OriginalSettings/SoundSettings;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings_reverb"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 660
    .local v0, ReverbSharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 661
    .local v2, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "DoNotShowDialog"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 662
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 664
    .end local v0           #ReverbSharedPrefs:Landroid/content/SharedPreferences;
    .end local v2           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
