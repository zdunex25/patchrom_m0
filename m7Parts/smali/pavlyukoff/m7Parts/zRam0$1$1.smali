.class Lpavlyukoff/m7Parts/zRam0$1$1;
.super Ljava/lang/Object;
.source "zRam0.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpavlyukoff/m7Parts/zRam0$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpavlyukoff/m7Parts/zRam0$1;


# direct methods
.method constructor <init>(Lpavlyukoff/m7Parts/zRam0$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lpavlyukoff/m7Parts/zRam0$1$1;->this$1:Lpavlyukoff/m7Parts/zRam0$1;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 43
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lpavlyukoff/m7Parts/zRam0$1$1;->this$1:Lpavlyukoff/m7Parts/zRam0$1;

    #getter for: Lpavlyukoff/m7Parts/zRam0$1;->this$0:Lpavlyukoff/m7Parts/zRam0;
    invoke-static {v3}, Lpavlyukoff/m7Parts/zRam0$1;->access$0(Lpavlyukoff/m7Parts/zRam0$1;)Lpavlyukoff/m7Parts/zRam0;

    move-result-object v3

    const-class v4, Lpavlyukoff/m7Parts/m7PartsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v2, shortcutIntent:Landroid/content/Intent;
    iget-object v3, p0, Lpavlyukoff/m7Parts/zRam0$1$1;->this$1:Lpavlyukoff/m7Parts/zRam0$1;

    #getter for: Lpavlyukoff/m7Parts/zRam0$1;->this$0:Lpavlyukoff/m7Parts/zRam0;
    invoke-static {v3}, Lpavlyukoff/m7Parts/zRam0$1;->access$0(Lpavlyukoff/m7Parts/zRam0$1;)Lpavlyukoff/m7Parts/zRam0;

    move-result-object v3

    const/high16 v4, 0x7f02

    invoke-static {v3, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 48
    .local v0, iconResource:Landroid/content/Intent$ShortcutIconResource;
    const-string v3, "zRamSize"

    iget-object v4, p0, Lpavlyukoff/m7Parts/zRam0$1$1;->this$1:Lpavlyukoff/m7Parts/zRam0$1;

    #getter for: Lpavlyukoff/m7Parts/zRam0$1;->this$0:Lpavlyukoff/m7Parts/zRam0;
    invoke-static {v4}, Lpavlyukoff/m7Parts/zRam0$1;->access$0(Lpavlyukoff/m7Parts/zRam0$1;)Lpavlyukoff/m7Parts/zRam0;

    move-result-object v4

    iget-object v4, v4, Lpavlyukoff/m7Parts/zRam0;->sas:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 53
    const-string v3, "zRamSize"

    iget-object v4, p0, Lpavlyukoff/m7Parts/zRam0$1$1;->this$1:Lpavlyukoff/m7Parts/zRam0$1;

    #getter for: Lpavlyukoff/m7Parts/zRam0$1;->this$0:Lpavlyukoff/m7Parts/zRam0;
    invoke-static {v4}, Lpavlyukoff/m7Parts/zRam0$1;->access$0(Lpavlyukoff/m7Parts/zRam0$1;)Lpavlyukoff/m7Parts/zRam0;

    move-result-object v4

    iget-object v4, v4, Lpavlyukoff/m7Parts/zRam0;->sas:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v3, "android.intent.extra.shortcut.NAME"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "zRam: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lpavlyukoff/m7Parts/zRam0$1$1;->this$1:Lpavlyukoff/m7Parts/zRam0$1;

    #getter for: Lpavlyukoff/m7Parts/zRam0$1;->this$0:Lpavlyukoff/m7Parts/zRam0;
    invoke-static {v5}, Lpavlyukoff/m7Parts/zRam0$1;->access$0(Lpavlyukoff/m7Parts/zRam0$1;)Lpavlyukoff/m7Parts/zRam0;

    move-result-object v5

    iget-object v5, v5, Lpavlyukoff/m7Parts/zRam0;->sas:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v3, p0, Lpavlyukoff/m7Parts/zRam0$1$1;->this$1:Lpavlyukoff/m7Parts/zRam0$1;

    #getter for: Lpavlyukoff/m7Parts/zRam0$1;->this$0:Lpavlyukoff/m7Parts/zRam0;
    invoke-static {v3}, Lpavlyukoff/m7Parts/zRam0$1;->access$0(Lpavlyukoff/m7Parts/zRam0$1;)Lpavlyukoff/m7Parts/zRam0;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Lpavlyukoff/m7Parts/zRam0;->setResult(ILandroid/content/Intent;)V

    .line 62
    iget-object v3, p0, Lpavlyukoff/m7Parts/zRam0$1$1;->this$1:Lpavlyukoff/m7Parts/zRam0$1;

    #getter for: Lpavlyukoff/m7Parts/zRam0$1;->this$0:Lpavlyukoff/m7Parts/zRam0;
    invoke-static {v3}, Lpavlyukoff/m7Parts/zRam0$1;->access$0(Lpavlyukoff/m7Parts/zRam0$1;)Lpavlyukoff/m7Parts/zRam0;

    move-result-object v3

    invoke-virtual {v3}, Lpavlyukoff/m7Parts/zRam0;->finish()V

    .line 63
    return-void
.end method
