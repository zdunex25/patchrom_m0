.class Lcom/android/gallery3d/filtershow/FilterShowActivity$2;
.super Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;
.source "FilterShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/FilterShowActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field final synthetic val$sid:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$2;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iput p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$2;->val$sid:I

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterExposure;-><init>()V

    .line 343
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$2;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$2;->val$sid:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$2;->mName:Ljava/lang/String;

    .line 344
    return-void
.end method
