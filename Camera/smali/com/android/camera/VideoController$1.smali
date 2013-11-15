.class Lcom/android/camera/VideoController$1;
.super Ljava/lang/Object;
.source "VideoController.java"

# interfaces
.implements Lcom/android/camera/ui/PieItem$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoController;->initialize(Lcom/android/camera/PreferenceGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoController;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoController;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/VideoController$1;->this$0:Lcom/android/camera/VideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/android/camera/ui/PieItem;)V
    .locals 6
    .parameter "item"

    .prologue
    .line 70
    iget-object v4, p0, Lcom/android/camera/VideoController$1;->this$0:Lcom/android/camera/VideoController;

    iget-object v4, v4, Lcom/android/camera/VideoController;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v5, "pref_camera_id_key"

    invoke-virtual {v4, v5}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 71
    .local v2, pref:Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, index:I
    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 74
    .local v3, values:[Ljava/lang/CharSequence;
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    rem-int v0, v4, v5

    .line 75
    aget-object v4, v3, v0

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 76
    .local v1, newCameraId:I
    iget-object v4, p0, Lcom/android/camera/VideoController$1;->this$0:Lcom/android/camera/VideoController;

    iget-object v4, v4, Lcom/android/camera/VideoController;->mListener:Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v4, v1}, Lcom/android/camera/CameraPreference$OnPreferenceChangedListener;->onCameraPickerClicked(I)V

    .line 78
    .end local v0           #index:I
    .end local v1           #newCameraId:I
    .end local v3           #values:[Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method
