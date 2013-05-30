.class Lcom/android/updater/License$1;
.super Landroid/webkit/WebViewClient;
.source "License.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/License;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/License;


# direct methods
.method constructor <init>(Lcom/android/updater/License;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/updater/License$1;->this$0:Lcom/android/updater/License;

    .line 67
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/updater/License$1;->this$0:Lcom/android/updater/License;

    invoke-virtual {v0, p1}, Lcom/android/updater/License;->setContentView(Landroid/view/View;)V

    .line 71
    return-void
.end method
