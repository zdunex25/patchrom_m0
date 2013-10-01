.class Lcom/android/updater/ListFilesActivity$4;
.super Ljava/lang/Object;
.source "ListFilesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/ListFilesActivity;->installFileDialog(Landroid/content/Context;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$selectedOpts:[Z


# direct methods
.method constructor <init>([Z)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/updater/ListFilesActivity$4;->val$selectedOpts:[Z

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/updater/ListFilesActivity$4;->val$selectedOpts:[Z

    aput-boolean p3, v0, p2

    .line 232
    return-void
.end method
