.class Lcom/android/camera/PhotoController$2;
.super Ljava/lang/Object;
.source "PhotoController.java"

# interfaces
.implements Lcom/android/camera/ui/PieItem$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoController;->initialize(Lcom/android/camera/PreferenceGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoController;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoController;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/camera/PhotoController$2;->this$0:Lcom/android/camera/PhotoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/android/camera/ui/PieItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 86
    iget-object v2, p0, Lcom/android/camera/PhotoController$2;->this$0:Lcom/android/camera/PhotoController;

    iget-object v2, v2, Lcom/android/camera/PhotoController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v3, "pref_camera_hdr_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 88
    .local v1, pref:Lcom/android/camera/ListPreference;
    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v0, v2, 0x2

    .line 91
    .local v0, index:I
    invoke-virtual {v1, v0}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 92
    iget-object v2, p0, Lcom/android/camera/PhotoController$2;->this$0:Lcom/android/camera/PhotoController;

    invoke-virtual {v2, v1}, Lcom/android/camera/PhotoController;->onSettingChanged(Lcom/android/camera/ListPreference;)V

    .line 94
    .end local v0           #index:I
    :cond_0
    return-void
.end method
