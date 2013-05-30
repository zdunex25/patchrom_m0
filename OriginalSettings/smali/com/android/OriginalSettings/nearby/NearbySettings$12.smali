.class Lcom/android/OriginalSettings/nearby/NearbySettings$12;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

.field final synthetic val$handler:Landroid/preference/Preference$OnPreferenceChangeListener;

.field final synthetic val$newValue:Ljava/lang/Object;

.field final synthetic val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/nearby/NearbySettings;Landroid/preference/Preference$OnPreferenceChangeListener;Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1531
    iput-object p1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$12;->this$0:Lcom/android/OriginalSettings/nearby/NearbySettings;

    iput-object p2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$12;->val$handler:Landroid/preference/Preference$OnPreferenceChangeListener;

    iput-object p3, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$12;->val$preference:Landroid/preference/Preference;

    iput-object p4, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$12;->val$newValue:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$12;->val$handler:Landroid/preference/Preference$OnPreferenceChangeListener;

    iget-object v1, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$12;->val$preference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/OriginalSettings/nearby/NearbySettings$12;->val$newValue:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1535
    return-void
.end method
