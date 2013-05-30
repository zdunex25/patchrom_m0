.class Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$2;
.super Ljava/lang/Object;
.source "CloudSettingsMainFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;

    #calls: Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->requestDropboxAuth()V
    invoke-static {v0}, Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;->access$600(Lcom/android/OriginalSettings/cloud/CloudSettingsMainFragment;)V

    .line 631
    const/4 v0, 0x0

    return v0
.end method
