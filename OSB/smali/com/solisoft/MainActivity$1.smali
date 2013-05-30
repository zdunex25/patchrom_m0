.class Lcom/miui/osb/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/osb/MainActivity;->warningQuitApp(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/osb/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/osb/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miui/osb/MainActivity$1;->this$0:Lcom/miui/osb/MainActivity;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/miui/osb/MainActivity$1;->this$0:Lcom/miui/osb/MainActivity;

    #calls: Lcom/miui/osb/MainActivity;->terminateApp()V
    invoke-static {v0}, Lcom/miui/osb/MainActivity;->access$0(Lcom/miui/osb/MainActivity;)V

    .line 261
    return-void
.end method
