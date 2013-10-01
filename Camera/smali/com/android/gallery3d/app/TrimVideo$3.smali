.class Lcom/android/gallery3d/app/TrimVideo$3;
.super Ljava/lang/Object;
.source "TrimVideo.java"

# interfaces
.implements Lcom/android/gallery3d/app/TrimVideo$ContentResolverQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/TrimVideo;->getSaveDirectory()Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/TrimVideo;

.field final synthetic val$dir:[Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/TrimVideo;[Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/gallery3d/app/TrimVideo$3;->this$0:Lcom/android/gallery3d/app/TrimVideo;

    iput-object p2, p0, Lcom/android/gallery3d/app/TrimVideo$3;->val$dir:[Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCursorResult(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/gallery3d/app/TrimVideo$3;->val$dir:[Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    aput-object v1, v0, v3

    .line 255
    return-void
.end method
