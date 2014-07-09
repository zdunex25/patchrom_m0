.class Lpavlyukoff/m7Parts/LinkToggles$1$1;
.super Ljava/lang/Object;
.source "LinkToggles.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpavlyukoff/m7Parts/LinkToggles$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lpavlyukoff/m7Parts/LinkToggles$1;


# direct methods
.method constructor <init>(Lpavlyukoff/m7Parts/LinkToggles$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lpavlyukoff/m7Parts/LinkToggles$1$1;->this$1:Lpavlyukoff/m7Parts/LinkToggles$1;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 51
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v2, shortcutIntent:Landroid/content/Intent;
    iget-object v3, p0, Lpavlyukoff/m7Parts/LinkToggles$1$1;->this$1:Lpavlyukoff/m7Parts/LinkToggles$1;

    #getter for: Lpavlyukoff/m7Parts/LinkToggles$1;->this$0:Lpavlyukoff/m7Parts/LinkToggles;
    invoke-static {v3}, Lpavlyukoff/m7Parts/LinkToggles$1;->access$0(Lpavlyukoff/m7Parts/LinkToggles$1;)Lpavlyukoff/m7Parts/LinkToggles;

    move-result-object v3

    const/high16 v4, 0x7f02

    invoke-static {v3, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 55
    .local v0, iconResource:Landroid/content/Intent$ShortcutIconResource;
    const-string v3, "com.android.systemui.SHORTCUT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    iget-object v3, p0, Lpavlyukoff/m7Parts/LinkToggles$1$1;->this$1:Lpavlyukoff/m7Parts/LinkToggles$1;

    #getter for: Lpavlyukoff/m7Parts/LinkToggles$1;->this$0:Lpavlyukoff/m7Parts/LinkToggles;
    invoke-static {v3}, Lpavlyukoff/m7Parts/LinkToggles$1;->access$0(Lpavlyukoff/m7Parts/LinkToggles$1;)Lpavlyukoff/m7Parts/LinkToggles;

    move-result-object v3

    iget-object v3, v3, Lpavlyukoff/m7Parts/LinkToggles;->m7Intents:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.systemui"

    iget-object v5, p0, Lpavlyukoff/m7Parts/LinkToggles$1$1;->this$1:Lpavlyukoff/m7Parts/LinkToggles$1;

    #getter for: Lpavlyukoff/m7Parts/LinkToggles$1;->this$0:Lpavlyukoff/m7Parts/LinkToggles;
    invoke-static {v5}, Lpavlyukoff/m7Parts/LinkToggles$1;->access$0(Lpavlyukoff/m7Parts/LinkToggles$1;)Lpavlyukoff/m7Parts/LinkToggles;

    move-result-object v5

    iget-object v5, v5, Lpavlyukoff/m7Parts/LinkToggles;->m7Names:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 62
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 64
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    const-string v3, "android.intent.extra.shortcut.NAME"

    iget-object v4, p0, Lpavlyukoff/m7Parts/LinkToggles$1$1;->this$1:Lpavlyukoff/m7Parts/LinkToggles$1;

    #getter for: Lpavlyukoff/m7Parts/LinkToggles$1;->this$0:Lpavlyukoff/m7Parts/LinkToggles;
    invoke-static {v4}, Lpavlyukoff/m7Parts/LinkToggles$1;->access$0(Lpavlyukoff/m7Parts/LinkToggles$1;)Lpavlyukoff/m7Parts/LinkToggles;

    move-result-object v4

    iget-object v4, v4, Lpavlyukoff/m7Parts/LinkToggles;->m7Items:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v3, p0, Lpavlyukoff/m7Parts/LinkToggles$1$1;->this$1:Lpavlyukoff/m7Parts/LinkToggles$1;

    #getter for: Lpavlyukoff/m7Parts/LinkToggles$1;->this$0:Lpavlyukoff/m7Parts/LinkToggles;
    invoke-static {v3}, Lpavlyukoff/m7Parts/LinkToggles$1;->access$0(Lpavlyukoff/m7Parts/LinkToggles$1;)Lpavlyukoff/m7Parts/LinkToggles;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Lpavlyukoff/m7Parts/LinkToggles;->setResult(ILandroid/content/Intent;)V

    .line 74
    iget-object v3, p0, Lpavlyukoff/m7Parts/LinkToggles$1$1;->this$1:Lpavlyukoff/m7Parts/LinkToggles$1;

    #getter for: Lpavlyukoff/m7Parts/LinkToggles$1;->this$0:Lpavlyukoff/m7Parts/LinkToggles;
    invoke-static {v3}, Lpavlyukoff/m7Parts/LinkToggles$1;->access$0(Lpavlyukoff/m7Parts/LinkToggles$1;)Lpavlyukoff/m7Parts/LinkToggles;

    move-result-object v3

    invoke-virtual {v3}, Lpavlyukoff/m7Parts/LinkToggles;->finish()V

    .line 75
    return-void
.end method
