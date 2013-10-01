.class public Lcom/android/gallery3d/app/ActivityState$ResultEntry;
.super Ljava/lang/Object;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/ActivityState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ResultEntry"
.end annotation


# instance fields
.field public requestCode:I

.field public resultCode:I

.field public resultData:Landroid/content/Intent;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    return-void
.end method
